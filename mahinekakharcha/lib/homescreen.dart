import 'package:flutter/material.dart';
import 'package:mahinekakharcha/animation.dart';
import 'dart:math' as math;

import 'package:mahinekakharcha/detailsscreen.dart';
import 'package:mahinekakharcha/model/homescreenmodel.dart';

double width;
double height;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i;
  HomeScreenModel homeScreenModel = HomeScreenModel();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    var value = homeScreenModel.data.values.toList();
    var key = homeScreenModel.data.keys.toList();
    double cost = value[0] + value[1] + value[2];
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  child: Stack(
                children: <Widget>[
                  // Expanded(
                  //   child:
                  CustomPaint(
                    painter: YellowBox(),
                    child: Container(),
                  ),
                  //Padding(padding: EdgeInsets.fromLTRB(200, 300, 40, 30)),
                  Positioned(
                    top: 100,
                    left: 310,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CustomPaint(
                    painter: CurvePainter(),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(10, 100, 2, 10)),
                          Container(
                            child: SlideFadeTransition(
                              child: Text(
                                '\t\t\tMahine ka Kharcha\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(10, 20, 2, 10)),
                          Container(
                            child: Text(
                              'Total Bills Due\n',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                              child: SlideFadeTransition(
                            child: Text(
                              '${cost}0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ],
                      ),

                      //   child: Text(
                      // 'Mahine ka Kharcha',
                      // style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 24,
                      //     fontWeight: FontWeight.bold),
                      // textAlign: TextAlign.center,
                      // )
                    ),
                  ),
                ],
              )),
            ),
            Expanded(
                flex: 3,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 500,
                          width: 500,
                          child: Container(
                            child: Column(children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 20, 4, 0),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          '💡',
                                          style: TextStyle(fontSize: 34),
                                        )),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 5, 4, 40),
                                    ),
                                    Container(
                                      child: Text(
                                        '${key[0]}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(80, 20, 4, 40),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        i = 0;
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen(
                                                      keys: key[i],
                                                      value: value[i])),
                                        );
                                      },
                                      child: Container(
                                          width: 80,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Pay Now',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 30, 4, 0),
                                    ),
                                    Container(
                                        child: Text(
                                      'Last date of Payment is 22 April',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    )),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(50, 30, 4, 0),
                                    ),
                                    Container(
                                        child: Text(
                                      '${value[0]}0',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                  ],
                                ),
                              )
                            ]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                    ),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[500],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            height: 500,
                            width: 500,
                            child: Container(
                              child: Column(children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 20, 4, 0),
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Text(
                                            '💰',
                                            style: TextStyle(fontSize: 34),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 5, 4, 40),
                                      ),
                                      Container(
                                        child: Text(
                                          '${key[1]}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(60, 20, 4, 40),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          i = 1;
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsScreen(
                                                        keys: key[i],
                                                        value: value[i])),
                                          );
                                        },
                                        child: Container(
                                            width: 80,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Pay Now',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 30, 4, 0),
                                      ),
                                      Container(
                                          child: Text(
                                        'No Auto Pay',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                      )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(170, 30, 4, 0),
                                      ),
                                      Container(
                                          child: Text(
                                        '${value[1]}0',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))
                                    ],
                                  ),
                                )
                              ]),
                            ))),
                    Padding(
                      padding: EdgeInsets.all(2),
                    ),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[500],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 500,
                            width: 500,
                            child: Container(
                              child: Column(children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 20, 4, 0),
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Text(
                                            '📱',
                                            style: TextStyle(fontSize: 34),
                                          )),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 5, 4, 40),
                                      ),
                                      Container(
                                        child: Text(
                                          '${key[2]}',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(100, 20, 4, 40),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          i = 2;
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsScreen(
                                                        keys: key[i],
                                                        value: value[i])),
                                          );
                                        },
                                        child: Container(
                                            width: 80,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Pay Now',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 30, 4, 0),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(250, 30, 4, 0),
                                      ),
                                      Container(
                                          child: Text(
                                        '${value[2]}0',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))
                                    ],
                                  ),
                                )
                              ]),
                            ))),
                    // Padding(padding: EdgeInsets.all(2)),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.fromLTRB(15, 2, 15, 50),
                            width: 300,
                            height: 10,
                            margin: EdgeInsets.all(2),
                            child: RaisedButton(
                              child: Text(
                                'Clear Bill',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.red[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen()),
                                );
                              },
                            )))
                  ],
                )))
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, height * .4);
    path.lineTo(width * .4, height * .4);
    path.quadraticBezierTo(width * .9, height * .13, width * .47, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class YellowBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.moveTo(170, 0);
    path.lineTo(170, size.height * 0.5);
    path.lineTo(280, size.height * 0.5);
    path.quadraticBezierTo(340, size.height * 0.1, 392, size.height * 0.50);
    path.lineTo(width * 20, 0);
    path.close();
    paint.color = Colors.yellow[700];
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
