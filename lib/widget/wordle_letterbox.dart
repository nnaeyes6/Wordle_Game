import 'package:flutter/material.dart';

class WordleLetterBox extends StatelessWidget {
  const WordleLetterBox({super.key});

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
    );
  }
}
