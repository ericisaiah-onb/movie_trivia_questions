import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/app_background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: AppBackground(
            Color.fromARGB(255, 255, 105, 97),
            Color.fromARGB(255, 255, 182, 172),
            Alignment.topLeft,
            Alignment.bottomRight),
      ),
    ),
  );
}
