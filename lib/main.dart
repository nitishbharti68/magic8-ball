import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.blue[900],
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int qstn =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            qstn = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$qstn.png'),
      ),
    );
  }
}
