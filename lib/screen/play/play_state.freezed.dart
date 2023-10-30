// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayState _$PlayStateFromJson(Map<String, dynamic> json) {
  return _PlayState.fromJson(json);
}

/// @nodoc
mixin _$PlayState {
  int get timer => throw _privateConstructorUsedError;
  int get currectAnswerCount => throw _privateConstructorUsedError;
  List<Fish> get fishList => throw _privateConstructorUsedError;
  int get questionCount => throw _privateConstructorUsedError;
  QuizCondition get quizCondition => throw _privateConstructorUsedError;
  PlayType get playType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayStateCopyWith<PlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayStateCopyWith<$Res> {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) then) =
      _$PlayStateCopyWithImpl<$Res, PlayState>;
  @useResult
  $Res call(
      {int timer,
      int currectAnswerCount,
      List<Fish> fishList,
      int questionCount,
      QuizCondition quizCondition,
      PlayType playType});
}

/// @nodoc
class _$PlayStateCopyWithImpl<$Res, $Val extends PlayState>
    implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = null,
    Object? currectAnswerCount = null,
    Object? fishList = null,
    Object? questionCount = null,
    Object? quizCondition = null,
    Object? playType = null,
  }) {
    return _then(_value.copyWith(
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      currectAnswerCount: null == currectAnswerCount
          ? _value.currectAnswerCount
          : currectAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      fishList: null == fishList
          ? _value.fishList
          : fishList // ignore: cast_nullable_to_non_nullable
              as List<Fish>,
      questionCount: null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      quizCondition: null == quizCondition
          ? _value.quizCondition
          : quizCondition // ignore: cast_nullable_to_non_nullable
              as QuizCondition,
      playType: null == playType
          ? _value.playType
          : playType // ignore: cast_nullable_to_non_nullable
              as PlayType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayStateImplCopyWith<$Res>
    implements $PlayStateCopyWith<$Res> {
  factory _$$PlayStateImplCopyWith(
          _$PlayStateImpl value, $Res Function(_$PlayStateImpl) then) =
      __$$PlayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timer,
      int currectAnswerCount,
      List<Fish> fishList,
      int questionCount,
      QuizCondition quizCondition,
      PlayType playType});
}

/// @nodoc
class __$$PlayStateImplCopyWithImpl<$Res>
    extends _$PlayStateCopyWithImpl<$Res, _$PlayStateImpl>
    implements _$$PlayStateImplCopyWith<$Res> {
  __$$PlayStateImplCopyWithImpl(
      _$PlayStateImpl _value, $Res Function(_$PlayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = null,
    Object? currectAnswerCount = null,
    Object? fishList = null,
    Object? questionCount = null,
    Object? quizCondition = null,
    Object? playType = null,
  }) {
    return _then(_$PlayStateImpl(
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      currectAnswerCount: null == currectAnswerCount
          ? _value.currectAnswerCount
          : currectAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      fishList: null == fishList
          ? _value._fishList
          : fishList // ignore: cast_nullable_to_non_nullable
              as List<Fish>,
      questionCount: null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      quizCondition: null == quizCondition
          ? _value.quizCondition
          : quizCondition // ignore: cast_nullable_to_non_nullable
              as QuizCondition,
      playType: null == playType
          ? _value.playType
          : playType // ignore: cast_nullable_to_non_nullable
              as PlayType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayStateImpl implements _PlayState {
  const _$PlayStateImpl(
      {required this.timer,
      required this.currectAnswerCount,
      required final List<Fish> fishList,
      required this.questionCount,
      required this.quizCondition,
      required this.playType})
      : _fishList = fishList;

  factory _$PlayStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayStateImplFromJson(json);

  @override
  final int timer;
  @override
  final int currectAnswerCount;
  final List<Fish> _fishList;
  @override
  List<Fish> get fishList {
    if (_fishList is EqualUnmodifiableListView) return _fishList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fishList);
  }

  @override
  final int questionCount;
  @override
  final QuizCondition quizCondition;
  @override
  final PlayType playType;

  @override
  String toString() {
    return 'PlayState(timer: $timer, currectAnswerCount: $currectAnswerCount, fishList: $fishList, questionCount: $questionCount, quizCondition: $quizCondition, playType: $playType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayStateImpl &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.currectAnswerCount, currectAnswerCount) ||
                other.currectAnswerCount == currectAnswerCount) &&
            const DeepCollectionEquality().equals(other._fishList, _fishList) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.quizCondition, quizCondition) ||
                other.quizCondition == quizCondition) &&
            (identical(other.playType, playType) ||
                other.playType == playType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timer,
      currectAnswerCount,
      const DeepCollectionEquality().hash(_fishList),
      questionCount,
      quizCondition,
      playType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayStateImplCopyWith<_$PlayStateImpl> get copyWith =>
      __$$PlayStateImplCopyWithImpl<_$PlayStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayStateImplToJson(
      this,
    );
  }
}

abstract class _PlayState implements PlayState {
  const factory _PlayState(
      {required final int timer,
      required final int currectAnswerCount,
      required final List<Fish> fishList,
      required final int questionCount,
      required final QuizCondition quizCondition,
      required final PlayType playType}) = _$PlayStateImpl;

  factory _PlayState.fromJson(Map<String, dynamic> json) =
      _$PlayStateImpl.fromJson;

  @override
  int get timer;
  @override
  int get currectAnswerCount;
  @override
  List<Fish> get fishList;
  @override
  int get questionCount;
  @override
  QuizCondition get quizCondition;
  @override
  PlayType get playType;
  @override
  @JsonKey(ignore: true)
  _$$PlayStateImplCopyWith<_$PlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
