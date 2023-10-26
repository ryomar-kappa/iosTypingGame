import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:takayama_test/enum/quiz_condition.dart';
import 'package:takayama_test/main.dart';
import 'package:takayama_test/screen/play/play_state.dart';

part 'play_provider.g.dart';

@riverpod
class Play extends _$Play {
  @override
  PlayState build() {
    return PlayState(
        timer: 100,
        currectAnswerCount: 0,
        fishList: fishList,
        questionCount: 0,
        quizCondition: QuizCondition.beforeAnswer);
  }

  Future<void> onPressedDone(String answer, BuildContext context) async {
    state = state.checkAnswer(answer);

    await Future.delayed(const Duration(milliseconds: 500));

    if (state.checkEnd()) {
      context.push('/end');
    }

    state = state.refleshQuizCondition().changeNextQuestion();
  }
}
