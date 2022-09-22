import 'package:flutter/material.dart';

class WordleLetterBox extends StatelessWidget {
  final String? letter;
  const WordleLetterBox({super.key, this.letter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.grey.shade300,
        ),
      ),
      child: Text(
        letter ?? '',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      ),
    );
  }
}
