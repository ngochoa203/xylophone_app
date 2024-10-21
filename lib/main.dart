import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(''),
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
              buildKey(color: const Color(0xFF4CAF50), soundNumber: 1),
              buildKey(color: const Color(0xFFE91E63), soundNumber: 2),
              buildKey(color: const Color(0xFFFF9800), soundNumber: 3),
              buildKey(color: const Color(0xFFFFEB3B), soundNumber: 4),
              buildKey(color: const Color(0xFF2196F3), soundNumber: 5),
              buildKey(color: const Color(0xFF9C27B0), soundNumber: 6),
              buildKey(color: const Color(0xFFCDDC39), soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
