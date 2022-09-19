// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameSettings {
  final int wordSize;
  final int attempt;
  GameSettings({
    required this.wordSize,
    required this.attempt,
  });
  GameSettings clone({
    int? wordSize,
    int? attempt,
  }) {
    return GameSettings(
        wordSize: wordSize ?? this.wordSize, attempt: attempt ?? this.attempt);
  }
}

class GamesettingsNotifier extends StateNotifier<GameSettings> {
  GamesettingsNotifier(super.state);
  void updateWordSize(int wordSize) {
    state = state.clone(wordSize: wordSize);
  }

  void updateAttempts(int attempt) {
    state = state.clone(attempt: attempt);
  }
}

final gameSettingsProvider =
    StateNotifierProvider<GamesettingsNotifier, GameSettings>((ref) {
  return GamesettingsNotifier(GameSettings(wordSize: 5, attempt: 6));
});
