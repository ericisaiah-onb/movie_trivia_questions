import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/quiz_screen.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Icon icon;

  const MainButton(this.text, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen()),
          );
        },
        icon: icon,
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        ),
      ),
    );
  }
}
