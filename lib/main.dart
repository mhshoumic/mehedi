import 'package:flutter/material.dart';

void main() {
  runApp(august());
}

class august extends StatelessWidget {
  const august({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text(
              "My name is mehedi",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.pink,
                  backgroundColor: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
