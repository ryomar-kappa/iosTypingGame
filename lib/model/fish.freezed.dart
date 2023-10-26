// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fish _$FishFromJson(Map<String, dynamic> json) {
  return _Fish.fromJson(json);
}

/// @nodoc
mixin _$Fish {
  String get kanji => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get yomigana => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FishCopyWith<Fish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FishCopyWith<$Res> {
  factory $FishCopyWith(Fish value, $Res Function(Fish) then) =
      _$FishCopyWithImpl<$Res, Fish>;
  @useResult
  $Res call({String kanji, String path, String yomigana, int answerCount});
}

/// @nodoc
class _$FishCopyWithImpl<$Res, $Val extends Fish>
    implements $FishCopyWith<$Res> {
  _$FishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanji = null,
    Object? path = null,
    Object? yomigana = null,
    Object? answerCount = null,
  }) {
    return _then(_value.copyWith(
      kanji: null == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      yomigana: null == yomigana
          ? _value.yomigana
          : yomigana // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FishImplCopyWith<$Res> implements $FishCopyWith<$Res> {
  factory _$$FishImplCopyWith(
          _$FishImpl value, $Res Function(_$FishImpl) then) =
      __$$FishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kanji, String path, String yomigana, int answerCount});
}

/// @nodoc
class __$$FishImplCopyWithImpl<$Res>
    extends _$FishCopyWithImpl<$Res, _$FishImpl>
    implements _$$FishImplCopyWith<$Res> {
  __$$FishImplCopyWithImpl(_$FishImpl _value, $Res Function(_$FishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanji = null,
    Object? path = null,
    Object? yomigana = null,
    Object? answerCount = null,
  }) {
    return _then(_$FishImpl(
      kanji: null == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      yomigana: null == yomigana
          ? _value.yomigana
          : yomigana // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FishImpl implements _Fish {
  const _$FishImpl(
      {required this.kanji,
      required this.path,
      required this.yomigana,
      required this.answerCount});

  factory _$FishImpl.fromJson(Map<String, dynamic> json) =>
      _$$FishImplFromJson(json);

  @override
  final String kanji;
  @override
  final String path;
  @override
  final String yomigana;
  @override
  final int answerCount;

  @override
  String toString() {
    return 'Fish(kanji: $kanji, path: $path, yomigana: $yomigana, answerCount: $answerCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FishImpl &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.yomigana, yomigana) ||
                other.yomigana == yomigana) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kanji, path, yomigana, answerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      __$$FishImplCopyWithImpl<_$FishImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FishImplToJson(
      this,
    );
  }
}

abstract class _Fish implements Fish {
  const factory _Fish(
      {required final String kanji,
      required final String path,
      required final String yomigana,
      required final int answerCount}) = _$FishImpl;

  factory _Fish.fromJson(Map<String, dynamic> json) = _$FishImpl.fromJson;

  @override
  String get kanji;
  @override
  String get path;
  @override
  String get yomigana;
  @override
  int get answerCount;
  @override
  @JsonKey(ignore: true)
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
