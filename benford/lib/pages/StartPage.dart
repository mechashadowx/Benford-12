import 'package:benford/helper.dart';
import 'package:benford/pages/Run.dart';
import 'package:flutter/material.dart';

import '../Data.dart';

class StartPage extends StatefulWidget {
  static final id = 'start_page';
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List<Data> dataHelper;

  @override
  void initState() {
    super.initState();
    dataHelper = List();
    dataHelper = data;
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: data.size.height * 0.35),
            child: ListView(
              children: List.generate(dataHelper.length, (index) {
                return Column(
                  children: <Widget>[
                    buildTopCard(
                      index,
                      dataHelper[index].cardTitle,
                      dataHelper[index].open ? gray : black,
                      data.size.height * 0.15,
                      data.size.width * 0.15,
                      data.size.width * 0.13,
                      data.size.height * 0.15 * 0.2,
                    ),
                    if (dataHelper[index].open)
                      buildBottomCard(
                        index,
                        dataHelper[index].content,
                        data.size.width * 0.15,
                        data.size.width * 0.05,
                        data.size.width * 0.13 * 0.4,
                        data.size.height * 0.15 * 0.2,
                        data.size.width * 0.05,
                      ),
                  ],
                );
              }),
            ),
          ),
          Container(
            height: data.size.height * 0.35,
            width: data.size.width,
            decoration: BoxDecoration(
              color: red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(data.size.width * 0.05),
                bottomRight: Radius.circular(data.size.width * 0.05),
              ),
            ),
            child: Center(
              child: Text(
                startPagetitle,
                style: TextStyle(
                  color: black,
                  fontSize: data.size.width * 0.13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopCard(
    int index,
    String title,
    Color color,
    double sizeY,
    double marginH,
    double fontSize,
    double rad,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dataHelper[index].open = !dataHelper[index].open;
        });
      },
      child: Container(
        height: sizeY,
        margin: EdgeInsets.symmetric(
          vertical: marginH * 0.5,
          horizontal: marginH,
        ),
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(rad),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBottomCard(
    int id,
    List<String> content,
    double marginX,
    double marginY,
    double fontSize,
    double rad,
    double imageSize,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: marginX,
        vertical: marginY,
      ),
      decoration: BoxDecoration(
        color: gray,
        borderRadius: BorderRadius.circular(marginX * 0.2),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(content.length, (index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Run(
                          details: dataHelper[id].details[content[index]],
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        content[index],
                        style: TextStyle(
                          color: black,
                          fontSize: fontSize,
                        ),
                      ),
                      Image.asset(
                        'assets/go.png',
                        height: imageSize,
                        width: imageSize,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
