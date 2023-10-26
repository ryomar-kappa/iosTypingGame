import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:takayama_test/main.dart';
import 'package:takayama_test/screen/play/play_state.dart';

part 'play_provider.g.dart';

@riverpod
class Play extends _$Play {
  @override
  Future<PlayState> build() async {
    return PlayState(
        timer: 100,
        currectAnswerCount: 0,
        fishList: fishList,
        questionCount: 0);
  }

  void onPressedDone(String answer, BuildContext context) {
    if (state.value == null) {
      return;
    }
    final curretAnswerCount = _calcFishCount(answer);
    _nextQuestion(context, curretAnswerCount);
  }

  int _calcFishCount(String answer) {
    if (state.value!.fishYomigana == answer) {
      return state.value!.currectAnswerCount + 1;
    }
    return state.value!.currectAnswerCount;
  }

  // 新しい問題(Fish)にとりかえる。
  void _nextQuestion(BuildContext context, int currectAnswerCount) {
    state = AsyncValue.data(state.value!.copyWith(
        currectAnswerCount: currectAnswerCount,
        questionCount: state.value!.questionCount + 1));
  }
}
