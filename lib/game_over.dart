import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/main_button.dart';

class GameOver extends StatelessWidget {
  final int score;

  const GameOver(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white54,
              Colors.white70,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Game over',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Score: $score',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              const MainButton(
                'Restart Game',
                Icon(Icons.restart_alt, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
