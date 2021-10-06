import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(child: Text("Mhshoumic")),
      ),
      body: Center(
        child: Container(
          child: Text(
            "My name is mehedi",
            style: TextStyle(
                fontSize: 40, color: Colors.pink, backgroundColor: Colors.blue),
          ),
        ),
      ),
    );
  }
}
