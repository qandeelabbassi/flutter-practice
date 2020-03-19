/*
 Important Learning Outcomes
 1) Functions: named parameters and return values
 2) Reuse code: Create repeated UI using functions
 3) Play sound across platforms
 */

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildNoteUI(color: Colors.red, index: 1),
              buildNoteUI(color: Colors.orange, index: 2),
              buildNoteUI(color: Colors.yellow, index: 3),
              buildNoteUI(color: Colors.green, index: 4),
              buildNoteUI(color: Colors.teal, index: 5),
              buildNoteUI(color: Colors.blue, index: 6),
              buildNoteUI(color: Colors.purple, index: 7),
            ]),
      ),
    )));
  }

  void playSound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildNoteUI({Color color, int index}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(index);
        },
      ),
    );
  }
}
