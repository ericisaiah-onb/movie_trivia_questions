import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/main_button.dart';

class MainMenu extends StatelessWidget {
  final String imagePath;
  final String title;

  const MainMenu(this.imagePath, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          imagePath,
          width: 200,
        ),
        Container(
          margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: Text(
            title,
            style: const TextStyle(
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
    );
  }
}
