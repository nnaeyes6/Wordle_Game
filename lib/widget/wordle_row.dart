// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:wordle_app/widget/wordle_letterbox.dart';

class WordleRow extends StatelessWidget {
  final int wordNumsize;

  const WordleRow({
    Key? key,
    required this.wordNumsize,
  }) : super(key: key);

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
