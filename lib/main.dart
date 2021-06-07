import 'package:flutter/material.dart';
import 'package:myapp/Navbar.dart';
import 'package:myapp/DashBoard.dart';
import 'package:myapp/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "NotoSansCJKkr-DemiLight",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Navbar(),
        DashBoard(),
        Profile(),
      ],
    ));
  }
}
