import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;

  const MainButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          print('button pressed');
        },
        icon:
            const Icon(Icons.play_arrow, color: Color.fromARGB(255, 255, 0, 0)),
        label: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 0, 0),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
