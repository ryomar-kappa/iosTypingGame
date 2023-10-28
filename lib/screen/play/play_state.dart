import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:takayama_test/enum/quiz_condition.dart';
import 'package:takayama_test/main.dart';
import 'package:takayama_test/model/fish.dart';

part 'play_state.freezed.dart';
part 'play_state.g.dart';

const int _maxQuizCount = 5;

@freezed
class PlayState with _$PlayState {
  const factory PlayState({
    required int timer,
    required int currectAnswerCount,
    required List<Fish> fishList,
    required int questionCount,
    required QuizCondition quizCondition,
  }) = _PlayState;

  factory PlayState.init() {
    final fishQuestionList = [...globalFishList];
    fishQuestionList.shuffle();
    return PlayState(
        timer: 100,
        currectAnswerCount: 0,
        fishList: fishQuestionList,
        questionCount: 0,
        quizCondition: QuizCondition.beforeAnswer);
  }

  factory PlayState.fromJson(Map<String, dynamic> json) =>
      _$PlayStateFromJson(json);
}

extension PlayStateEx on PlayState {
  PlayState checkAnswer(String answer) {
    if (answer == fishYomigana) {
      return copyWith(
          quizCondition: QuizCondition.correct,
          currectAnswerCount: currectAnswerCount + 1);
    }
    return copyWith(quizCondition: QuizCondition.inCorrect);
  }

  PlayState changeNextQuestion() {
    return copyWith(questionCount: questionCount + 1);
  }

  PlayState refleshQuizCondition() {
    return copyWith(quizCondition: QuizCondition.beforeAnswer);
  }

  bool checkEnd() {
    if (questionCount == _maxQuizCount) {
      return true;
    }
    return false;
  }

  Fish get currentFish => fishList[questionCount];
  String get timerStr => timer.toString();
  String get currectAnswerCountStr => currectAnswerCount.toString();
  String get fishKanji => currentFish.kanji;
  String get fishYomigana => currentFish.yomigana;
  String get svgPath => currentFish.path;
  Icon get icon => quizCondition.icon;
}
