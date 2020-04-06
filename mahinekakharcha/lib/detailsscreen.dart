import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mahinekakharcha/homescreen.dart';

class DetailsScreen extends StatefulWidget {
  final String keys;
  final double value;

  const DetailsScreen({Key key, this.keys, this.value}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(10000000);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          CustomPaint(
            painter: BackGround(),
            child: Container(),
          ),
          Positioned(
              top: 40,
              left: 130,
              child: CircleAvatar(
                radius: 65,
                child: Icon(
                  Icons.monetization_on,
                  size: 100,
                  color: Colors.blueGrey[400],
                ),
                backgroundColor: Colors.blueGrey[200],
              )),
          Positioned(
              top: 200,
              left: 90,
              child: Text(
                'Payement is completed for the bill.',
                style: TextStyle(fontSize: 15),
              )),
          Positioned(
              top: 250,
              left: 60,
              child: Container(
                  width: 276,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            // Padding(padding: EdgeInsets.fromLTRB(20, 70, 0, 0)),
                            Container(
                                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                height: 60,
                                width: 60,
                                child: Image.asset('assets/images/right.png')),
                            // Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0)),
                            Container(
                              child: Text(
                                '\t\t\t\t\t${widget.keys}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 0, 0, 12),
                              child: Text(
                                'Txn ID:$randomNumber',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '${widget.value}0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))),
          Positioned(
              top: 340,
              left: 60,
              child: Container(
                  width: 276,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            // Padding(padding: EdgeInsets.fromLTRB(20, 70, 0, 0)),
                            Container(
                                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                height: 60,
                                width: 60,
                                child: Image.asset('assets/images/right.png')),
                            // Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0)),
                            Container(
                              child: Text(
                                '\t\t\t\t\tServant Payment',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 0, 0, 12),
                              child: Text(
                                'Txn ID:${randomNumber + 3000}',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '6000.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))),
          Positioned(
              left: 150,
              top: 480,
              child: Text(
                'Total Amount',
                style: TextStyle(color: Colors.grey),
              )),
          Positioned(
              left: 162,
              top: 510,
              child: Text(
                '${widget.value + 6000.00}0',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 610,
              left: 110,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(85, 0, 0, 0)),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                    child: Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 670,
              left: 40,
              child: Container(
                  // padding: EdgeInsets.fromLTRB(20, 2, 15, 50),
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.all(2),
                  child: RaisedButton(
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  )))
        ],
      ),
    ));
  }
}

class BackGround extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    //red
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.4, 0);
    path.lineTo(size.width * 0.3, size.height * 0.5);
    path.lineTo(0, size.height * 0.7);
    paint.color = Colors.red[500];
    canvas.drawPath(path, paint);
    path.close();
    //yellow
    path = Path();
    path.moveTo(size.width * 0.4, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width * 0.3, size.height * 0.5);
    paint.color = Colors.yellow[700];
    canvas.drawPath(path, paint);
    path.close();

    //black document
    path = Path();
    path.moveTo(size.width * 0.2, size.height * 0.3);
    path.lineTo(size.width * 0.89, size.height * 0.3);
    path.lineTo(size.width * 0.86, size.height * 0.76);
    path.quadraticBezierTo(size.width * 0.86, size.height * 0.78,
        size.width * 0.80, size.height * 0.787);
    path.lineTo(size.width * 0.14, size.height * 0.787);
    canvas.drawShadow(path, Colors.grey.withAlpha(50), 4.0, false);
    paint.color = Colors.black;
    canvas.drawPath(path, paint);

    //white document
    path = Path();
    path.moveTo(size.width * 0.1, size.height * 0.04);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.03,
        size.width * 0.16, size.height * 0.03);
    path.lineTo(size.width * 0.9, size.height * 0.04);
    path.quadraticBezierTo(size.width * 0.92, size.height * 0.04,
        size.width * 0.9, size.height * 0.2);
    path.lineTo(size.width * 0.83, size.height * 0.79);
    path.lineTo(size.width * 0.76, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.72, size.height * 0.76,
        size.width * 0.68, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.64, size.height * 0.76,
        size.width * 0.60, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.56, size.height * 0.76,
        size.width * 0.52, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.48, size.height * 0.76,
        size.width * 0.44, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.76,
        size.width * 0.36, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.32, size.height * 0.76,
        size.width * 0.28, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.76,
        size.width * 0.12, size.height * 0.8);
    canvas.drawShadow(path, Colors.white.withAlpha(120), 4.0, false);
    // path.lineTo(size.width * 0.3, size.height * 0.5);
    //paint.strokeCap = StrokeCap.round;
    paint.color = Colors.white;
    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
