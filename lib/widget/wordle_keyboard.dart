import 'package:flutter/material.dart';
import 'package:wordle_app/wordle_key.dart';

class WordleKeyboard extends StatelessWidget {
  const WordleKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in 'QWERTYUIOP'.split('')) WordleKeys(letter: i)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in 'ASDFGHJKL'.split('')) WordleKeys(letter: i)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i in '_ZXCVBNM<'.split('')) WordleKeys(letter: i)

            // Just as the this below......
            // WordleKeys(letter: "Z"),
            // WordleKeys(letter: "X"),
            // WordleKeys(letter: "C"),
            // WordleKeys(letter: "V"),
            // WordleKeys(letter: "B"),
            // WordleKeys(letter: "N"),
            // WordleKeys(letter: "M"),
          ],
        ),
      ],
    );
  }
}
