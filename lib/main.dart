import 'package:flutter/material.dart';
import 'package:mehedi/pages/homepage.dart';
import 'package:mehedi/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AuGust());
}

class AuGust extends StatelessWidget {
  const AuGust({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryTextTheme: GoogleFonts.aBeeZeeTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
