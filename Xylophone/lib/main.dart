import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buttonKey(bgColor: Colors.red,soundNumber: 1),
            buttonKey(bgColor: Colors.yellow,soundNumber: 2),
            buttonKey(bgColor: Colors.green,soundNumber: 3),
            buttonKey(bgColor: Colors.teal,soundNumber: 4),
            buttonKey(bgColor: Colors.pink,soundNumber: 5),
            buttonKey(bgColor: Colors.blue,soundNumber: 6),
            buttonKey(bgColor: Colors.purple,soundNumber: 7),
          ],
        ),
      ),
    );
  }
}

void playAudio(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buttonKey({Color bgColor,int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: bgColor,
      onPressed: () {
        playAudio(soundNumber);
      },
    ),
  );
}
