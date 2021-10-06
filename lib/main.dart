import 'package:flutter/material.dart';
import 'package:mehedi/pages/homepage.dart';

void main() {
  runApp(august());
}

class august extends StatelessWidget {
  const august({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
