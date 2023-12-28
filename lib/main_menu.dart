import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/main_button.dart';

class MainMenu extends StatelessWidget {
  const MainMenu(this.topGradient, this.bottomGradient, this.startAlignment,
      this.endAlignment,
      {super.key});

  final Color? topGradient;
  final Color? bottomGradient;
  final Alignment? startAlignment;
  final Alignment? endAlignment;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment ?? Alignment.topLeft,
          end: endAlignment ?? Alignment.bottomRight,
          colors: [
            topGradient ?? const Color.fromARGB(255, 255, 100, 100),
            bottomGradient ?? const Color.fromARGB(255, 150, 0, 0),
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/images/film.png',
                width: 200,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: const Text(
                  'Movie Trivia Questions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const MainButton(
                'Start Game',
                Icon(Icons.play_arrow, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
