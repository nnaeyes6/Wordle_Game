import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_app/riverpod_provider/game_settings_provider.dart';

class WordSizeToggle extends ConsumerWidget {
  const WordSizeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);
    void updateWordSize() {
      var newWordsize = 5;
      if (gameSettings.wordSize == 4) newWordsize = 5;
      if (gameSettings.wordSize == 5) newWordsize = 6;
      if (gameSettings.wordSize == 6) newWordsize = 4;
      gameSettingsNotifier.updateWordSize(newWordsize);
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        onTap: () => updateWordSize(),
        child: Text(
          gameSettings.wordSize.toString(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
