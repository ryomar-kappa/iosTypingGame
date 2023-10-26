import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:takayama_test/model/fish.dart';

part 'play_state.freezed.dart';
part 'play_state.g.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState(
      {required int timer,
      required int currectAnswerCount,
      required List<Fish> fishList,
      required int questionCount}) = _PlayState;

  factory PlayState.fromJson(Map<String, dynamic> json) =>
      _$PlayStateFromJson(json);
}

extension PlayStateEx on PlayState {
  Fish get currentFish => fishList[questionCount];
  String get timerStr => timer.toString();
  String get currectAnswerCountStr => currectAnswerCount.toString();
  String get fishKanji => currentFish.kanji;
  String get fishYomigana => currentFish.yomigana;
  String get svgPath => currentFish.path;
}
