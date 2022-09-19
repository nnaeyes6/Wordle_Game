import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_app/riverpod_provider/game_settings_provider.dart';

class WordAttemptToggle extends ConsumerWidget {
  const WordAttemptToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);
    void updateWordAttempt() {
      var newWordAttept = 6;
      if (gameSettings.attempt == 4) newWordAttept = 5;
      if (gameSettings.attempt == 5) newWordAttept = 6;
      if (gameSettings.attempt == 6) newWordAttept = 4;
      gameSettingsNotifier.updateAttempts(newWordAttept);
    }

    final String text;
    switch (gameSettings.attempt) {
      case 4:
        text = 'HIGH';
        break;
      case 5:
        text = 'MED';
        break;

      case 6:
      default:
        text = 'LOW';
        break;
    }
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () => updateWordAttempt(),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
