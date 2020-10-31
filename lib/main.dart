import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playnote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildkey({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playnote(noteNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(noteNumber: 1, color: Colors.red),
              buildkey(noteNumber: 2, color: Colors.orange),
              buildkey(noteNumber: 3, color: Colors.yellow),
              buildkey(noteNumber: 4, color: Colors.green),
              buildkey(noteNumber: 5, color: Colors.teal),
              buildkey(noteNumber: 6, color: Colors.blue),
              buildkey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
