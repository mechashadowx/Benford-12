import 'package:benford/pages/HomePage.dart';
import 'package:benford/pages/StartPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benford',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      home: HomePage(),
      routes: {
        StartPage.id: (context) => StartPage(),
      },
    );
  }
}
