import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int center=1;
  void magic(){
    setState(() {
      center=Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Magic Ball'),
      ),
      body: Center(
          child: FlatButton(
              onPressed: () {
                magic();
              },
              child: Image.asset('images/ball$center.png',

              )
          )),
    );
  }
}
