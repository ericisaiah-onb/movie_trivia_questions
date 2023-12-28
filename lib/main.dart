import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/main_menu.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MainMenu(Colors.white54, Colors.white70, Alignment.topLeft,
            Alignment.bottomRight),
      ),
    ),
  );
}
