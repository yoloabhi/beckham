import 'package:flutter/material.dart';
import 'package:placement/login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Placement',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: Login()
    );
  }
}