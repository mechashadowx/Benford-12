import 'package:benford/helper.dart';
import 'package:benford/pages/StartPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: black,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: data.size.height * 0.35,
              width: data.size.width,
              color: black,
              alignment: Alignment.topCenter,
              child: Center(
                child: Text(
                  'Benford’s law',
                  style: TextStyle(
                    color: red,
                    fontSize: data.size.width * 0.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: data.size.height * 0.35),
              alignment: Alignment.topCenter,
              child: Center(
                child: ListView(
                  children: <Widget>[
                    Text(
                      definition,
                      style: TextStyle(
                        color: gray,
                        fontSize: data.size.width * 0.1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, StartPage.id);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: data.size.width * 0.1),
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/start.png',
                  height: data.size.width * 0.15,
                  width: data.size.width * 0.15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
