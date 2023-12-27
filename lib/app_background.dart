import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/main_menu.dart';

class AppBackground extends StatelessWidget {
  const AppBackground(this.topGradient, this.bottomGradient,
      this.startAlignment, this.endAlignment,
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
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: MainMenu(
            'assets/images/film.png',
            'MOVIE TRIVIA QUESTIONS',
          ),
        ),
      ),
    );
  }
}
