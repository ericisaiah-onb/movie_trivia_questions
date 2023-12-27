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
          width: 240,
        ),
        Container(
          margin: const EdgeInsets.only(top: 45.0, bottom: 25.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromRGBO(255, 0, 0, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const MainButton('Start Game'),
      ],
    );
  }
}
