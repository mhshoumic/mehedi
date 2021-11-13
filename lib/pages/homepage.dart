import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:mehedi/model/products.dart';
import 'package:mehedi/widgets/drawer.dart';
import 'package:mehedi/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var productJson = await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(productJson);
    var productData = decodedData["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(25, (index) => CataLogModel.items[0]);
    return Scaffold(
        backgroundColor: Colors.grey,
        drawer: MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Center(
              child: Column(
            children: [
              Text("Mehedi Mart"),
              Text(
                "Welcome to the state of Shopping",
                style: TextStyle(fontSize: 15, color: Colors.blueAccent),
              )
            ],
          )),
        ),
        body: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }));
  }
}
