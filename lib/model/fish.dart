import 'package:freezed_annotation/freezed_annotation.dart';

part 'fish.freezed.dart';
part 'fish.g.dart';

@freezed
class Fish with _$Fish {
  const factory Fish(
      {required String kanji,
      required String path,
      required String yomigana,
      required int answerCount}) = _Fish;

  factory Fish.fromJson(Map<String, dynamic> json) => _$FishFromJson(json);
}
