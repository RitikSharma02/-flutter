import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:matcher/matcher.dart';

class Homepage extends StatelessWidget {
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Center(
            child: Text("hello flkutter"),
          )),
      body: Center(
        child: Container(
          child: Text(" $days of flutter challange"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}