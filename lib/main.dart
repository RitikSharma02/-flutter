import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.purple,
            brightness: Brightness.light),
        themeMode: ThemeMode.light,
        // home: Homepage()
        // initialRoute: "/home",
        routes: {
          '/': (context) => LoginPage(),
          MyRoutes.loginRoutes: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => Homepage(),
        });
  }
}
