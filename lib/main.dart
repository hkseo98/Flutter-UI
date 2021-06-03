import 'package:flutter/material.dart';
import 'package:myapp/Navbar/Navbar.dart';
import 'package:myapp/LandingPage/LandingPage.dart';

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
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(195, 20, 50, 1.0),
            Color.fromRGBO(36, 11, 54, 1.0)
          ])),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: LandingPage())
          ],
        ),
      ),
    ));
  }
}