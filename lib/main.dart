import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple, brightness: Brightness.light),
        themeMode: ThemeMode.light,
        // home: Homepage()
        initialRoute: "/home",
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => Homepage(),
          'login_page': (context) => LoginPage(),
        });
  }
}
