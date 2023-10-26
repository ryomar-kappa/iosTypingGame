// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FishImpl _$$FishImplFromJson(Map<String, dynamic> json) => _$FishImpl(
      kanji: json['kanji'] as String,
      path: json['path'] as String,
      yomigana: json['yomigana'] as String,
      answerCount: json['answerCount'] as int,
    );

Map<String, dynamic> _$$FishImplToJson(_$FishImpl instance) =>
    <String, dynamic>{
      'kanji': instance.kanji,
      'path': instance.path,
      'yomigana': instance.yomigana,
      'answerCount': instance.answerCount,
    };
