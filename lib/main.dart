import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded drawButton({int no, MaterialColor color}) => 
      Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$no.wav');
          },
          child: null,
        ),
      );

  @override
  Widget build(BuildContext context) => 
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  drawButton(no: 1, color: Colors.red),
                  drawButton(no: 2, color: Colors.orange),
                  drawButton(no: 3, color: Colors.yellow),
                  drawButton(no: 4, color: Colors.green),
                  drawButton(no: 5, color: Colors.teal),
                  drawButton(no: 6, color: Colors.blue),
                  drawButton(no: 7, color: Colors.purple)
                ],
              ),
            ),
          ),
        ),
      );
}
