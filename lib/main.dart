import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Ask Me Anything"),
        ),
        backgroundColor: Colors.blue,
        body: Ball(),
      ),

    );   
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeBallPage(){
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            // print("I got clicked");
            changeBallPage();
            print(ballNumber);
          });
        }, child: Image.asset("images/ball$ballNumber.png")),
    );
  }
}