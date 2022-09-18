import 'package:flutter/material.dart';
import 'package:wordle_app/widget/wordle_letterbox.dart';

const wordNumsize = 5;

class WordleRow extends StatelessWidget {
  const WordleRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WordleLetterBox> boxes = List.empty(growable: true);

    for (int j = 0; j < wordNumsize; j++) {
      boxes.add(const WordleLetterBox());
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
