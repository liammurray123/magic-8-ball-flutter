import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballnumber = 1;

  void changeBallNumber() {
    setState(() {
      ballnumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: FlatButton(onPressed: () {
                changeBallNumber();
              }, 
              child: Image.asset('images/ball$ballnumber.png'),
          ),
        );
  }
}