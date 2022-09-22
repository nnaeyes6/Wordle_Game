import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_app/riverpod_provider/game_settings_provider.dart';
import 'package:wordle_app/riverpod_provider/game_state_provider.dart';

class WordleKeys extends ConsumerWidget {
  final String letter;
  const WordleKeys({super.key, required this.letter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget keyCap;
    double width = 55;
    Color color = Colors.grey.shade400;
    if (letter == '_') {
      keyCap = const Icon(Icons.keyboard_return_outlined);
    } else if (letter == '<') {
      keyCap = const Icon(
        Icons.backspace,
      );
    } else {
      width = 36;
      keyCap = Text(
        letter,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      );
    }
    return InkWell(
      onTap: () =>
          ref.read(gameStateProvider.notifier).updateCurrentAttempts(letter),
      child: Container(
        height: 45,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.all(2),
        alignment: Alignment.center,
        child: keyCap,
      ),
    );
  }
}
