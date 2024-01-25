import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.health_and_safety_outlined,
            size: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Тест',
            style: GoogleFonts.lato(color: Colors.black, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            icon: const Icon(Icons.arrow_right),
            label: const Text('Начать!'),
          )
        ],
      ),
    );
  }
}
