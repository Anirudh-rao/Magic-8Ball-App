import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: ballpage(),
      ),
    );

class ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int Ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              Ballnumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$Ballnumber.png')),
    );
  }
}
