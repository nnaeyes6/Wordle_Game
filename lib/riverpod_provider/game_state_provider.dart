import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_app/data/word_data_json.dart';
import 'package:wordle_app/riverpod_provider/game_settings_provider.dart';

class GameState {
  final List<String> validWords;
  final String correctWord;
  final GameSettings settings;
  final List<String> attempts;
  final int attemptedTimes;

  GameState(this.settings,
      {required this.validWords,
      required this.attempts,
      required this.attemptedTimes,
      required this.correctWord});
  GameState clone(
      {List<String>? validWords,
      String? correctWord,
      List<String>? attempts,
      int? attemptedTimes}) {
    return GameState(settings,
        validWords: validWords ?? this.validWords,
        correctWord: correctWord ?? this.correctWord,
        attempts: attempts ?? this.attempts,
        attemptedTimes: attemptedTimes ?? this.attemptedTimes);
  }
}

class GameStateNotifier extends StateNotifier<GameState> {
  final Random random = Random();
  GameStateNotifier(GameSettings settings)
      : super(GameState(settings,
            validWords: [],
            correctWord: "Begin",
            attempts: [],
            attemptedTimes: 0));

  Future<void> updateWords() async {
    final words = await loadWords(state.settings.wordSize);
    state = state.clone(
        validWords: words, correctWord: words[random.nextInt(words.length)]);
  }

  void updateNewCorrectWord() {
    state = state.clone(
        correctWord:
            state.validWords[random.nextInt(state.validWords.length - 1)]);
  }

  void updateCurrentAttempts(String key) {
    if (key == '_') {
      //handle the enter press

    } else if (key == '<') {
      //handle the delete press

    } else {
      // handle other keys function

      final attempts = state.attempts;
      if (attempts.length >= state.attemptedTimes) {
        attempts.add('');
      }
      var currentattempt = attempts[state.attemptedTimes];

      if (currentattempt.length >= state.settings.wordSize) {
        // print('wordsize is attached to current attempt');
        return;
      }
      currentattempt += key;
      // print(currentattempt);
      attempts[state.attemptedTimes] = currentattempt;
      state = state.clone(attempts: attempts);
    }
  }
}

final gameStateProvider =
    StateNotifierProvider<GameStateNotifier, GameState>((ref) {
  final settings = ref.watch(gameSettingsProvider);
  final gameSettingsNotifier = GameStateNotifier(settings);
  gameSettingsNotifier.updateWords();
  return gameSettingsNotifier;
});
