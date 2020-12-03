import 'package:flutter/material.dart';
import 'package:hidroid/Awal.dart';

import 'home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    Home.tag: (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hidroid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Awalan(),
      routes: routes,
    );
  }
}