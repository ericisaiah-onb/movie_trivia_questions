import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/game_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GameScreen(Colors.white54, Colors.white70, Alignment.topLeft,
            Alignment.bottomRight),
      ),
    ),
  );
}
