import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildNoteButtons(Color buttonColor, int noteNumber) {
    return Expanded(
      child: MaterialButton(
        color: buttonColor,
        onPressed: () {
          playNote(noteNumber);
        },
      ),
    );
  }

  void playNote(int noteNumber) async {
    final _player = AudioPlayer();
    await _player.setAsset('asset/note$noteNumber.wav');
    _player.play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNoteButtons(Colors.red, 1),
              buildNoteButtons(Colors.orange, 2),
              buildNoteButtons(Colors.yellow, 3),
              buildNoteButtons(Colors.green, 4),
              buildNoteButtons(Colors.blue, 5),
              buildNoteButtons(Colors.indigo, 6),
              buildNoteButtons(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
