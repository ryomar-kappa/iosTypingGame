import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:takayama_test/screen/play/play_state.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

part 'play_provider.g.dart';

@riverpod
class Play extends _$Play {
  @override
  PlayState build(PlayType playType) {
    return PlayState.init(playType);
  }

  Future<void> onPressedDone(String answer, BuildContext context) async {
    state = state.checkAnswer(answer);

    await Future.delayed(const Duration(milliseconds: 500));

    if (state.checkEnd()) {
      await context.push('/end', extra: state.playType);
    } else {
      state = state.refleshQuizCondition().changeNextQuestion();
    }
  }
}
