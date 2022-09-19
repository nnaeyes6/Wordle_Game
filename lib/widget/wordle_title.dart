import 'package:flutter/material.dart';
import 'package:wordle_app/widget/button/word_difficulty_button.dart';
import 'package:wordle_app/widget/button/wordsize_buttton.dart';

class WordleTitle extends StatelessWidget {
  const WordleTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        WordAttemptToggle(),
        Text(
          'WORDLE',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        WordSizeToggle(),
      ],
    );
  }
}
