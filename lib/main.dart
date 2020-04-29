import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded drawButton(int no, MaterialColor color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$no.wav');
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                drawButton(1, Colors.red),
                drawButton(2, Colors.orange),
                drawButton(3, Colors.yellow),
                drawButton(4, Colors.green),
                drawButton(5, Colors.teal),
                drawButton(6, Colors.blue),
                drawButton(7, Colors.purple)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
