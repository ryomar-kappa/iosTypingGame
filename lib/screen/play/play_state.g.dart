// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayStateImpl _$$PlayStateImplFromJson(Map<String, dynamic> json) =>
    _$PlayStateImpl(
      timer: json['timer'] as int,
      currectAnswerCount: json['currectAnswerCount'] as int,
      fishList: (json['fishList'] as List<dynamic>)
          .map((e) => Fish.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionCount: json['questionCount'] as int,
    );

Map<String, dynamic> _$$PlayStateImplToJson(_$PlayStateImpl instance) =>
    <String, dynamic>{
      'timer': instance.timer,
      'currectAnswerCount': instance.currectAnswerCount,
      'fishList': instance.fishList,
      'questionCount': instance.questionCount,
    };
