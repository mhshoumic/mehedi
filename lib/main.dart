import 'package:flutter/material.dart';
import 'package:mehedi/pages/homepage.dart';
import 'package:mehedi/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehedi/pages/routes.dart';

void main() {
  runApp(const AuGust());
}

class AuGust extends StatefulWidget {
  const AuGust({Key? key}) : super(key: key);

  @override
  State<AuGust> createState() => _AuGustState();
}

class _AuGustState extends State<AuGust> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryTextTheme: GoogleFonts.aBeeZeeTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
