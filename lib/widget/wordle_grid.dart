import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_app/riverpod_provider/game_settings_provider.dart';
import 'package:wordle_app/widget/wordle_row.dart';

class WordleGrid extends ConsumerWidget {
  const WordleGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final wordsize = gameSettings.wordSize;
    final List<WordleRow> rows = List.empty(growable: true);
    for (int i = 0; i < gameSettings.attempt; i++) {
      rows.add(WordleRow(wordNumsize: wordsize));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: rows,
    );
  }
}
