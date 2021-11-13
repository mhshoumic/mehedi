import 'package:flutter/material.dart';
import 'package:mehedi/pages/homepage.dart';
import 'package:mehedi/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehedi/pages/routes.dart';
import 'package:mehedi/widgets/Themes.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
