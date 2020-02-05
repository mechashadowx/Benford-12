import 'package:benford/Details.dart';
import 'package:benford/helper.dart';
import 'package:flutter/material.dart';

class Run extends StatefulWidget {
  final Details details;
  Run({
    this.details,
  });

  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {
  List<int> digitsFrq;
  List<double> percent;

  @override
  void initState() {
    super.initState();
    digitsFrq = List();
    percent = List();
    for (int i = 0; i < 9; i++) {
      digitsFrq.add(0);
      percent.add(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: black,
      body: Container(
        margin: EdgeInsets.only(top: data.size.height * 0.05),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.details.title,
                style: TextStyle(
                  color: gray,
                  fontSize: data.size.width * 0.13,
                ),
              ),
              Text(
                widget.details.desc,
                style: TextStyle(
                  color: gray,
                  fontSize: data.size.width * 0.13 * 0.5,
                ),
              ),
              Container(
                height: data.size.height * 0.55,
                margin: EdgeInsets.only(top: data.size.height * 0.05),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(9, (index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        verticalDirection: VerticalDirection.up,
                        children: digitsFrq[index] == 0
                            ? <Widget>[
                                customCircle(
                                  data.size.height * 0.6 / 40.0,
                                  black,
                                ),
                              ]
                            : List.generate(digitsFrq[index], (index) {
                                return customCircle(
                                    data.size.height * 0.6 / 40.0, red);
                              }),
                      );
                    }),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(9, (index) {
                      return Container(
                        child: Center(
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              color: gray,
                              fontSize: data.size.width * 0.13 * 0.6,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCircle(double size, Color color) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.all(size * 0.1),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
