import 'package:flutter/material.dart';
import 'package:wordle_app/widget/wordle_grid.dart';
import 'package:wordle_app/widget/wordle_keyboard.dart';
import 'package:wordle_app/widget/wordle_title.dart';

class MyWordlePage extends StatelessWidget {
  const MyWordlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            WordleTitle(),
            WordleGrid(),
            WordleKeyboard(),
          ],
        ),
      ),
    );
  }
}
