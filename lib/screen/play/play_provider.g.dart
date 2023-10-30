// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playHash() => r'74c5ac887be37d58a79b7b28e7e7a41a2151eff4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Play extends BuildlessAutoDisposeNotifier<PlayState> {
  late final PlayType playType;

  PlayState build(
    PlayType playType,
  );
}

/// See also [Play].
@ProviderFor(Play)
const playProvider = PlayFamily();

/// See also [Play].
class PlayFamily extends Family<PlayState> {
  /// See also [Play].
  const PlayFamily();

  /// See also [Play].
  PlayProvider call(
    PlayType playType,
  ) {
    return PlayProvider(
      playType,
    );
  }

  @override
  PlayProvider getProviderOverride(
    covariant PlayProvider provider,
  ) {
    return call(
      provider.playType,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'playProvider';
}

/// See also [Play].
class PlayProvider extends AutoDisposeNotifierProviderImpl<Play, PlayState> {
  /// See also [Play].
  PlayProvider(
    this.playType,
  ) : super.internal(
          () => Play()..playType = playType,
          from: playProvider,
          name: r'playProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$playHash,
          dependencies: PlayFamily._dependencies,
          allTransitiveDependencies: PlayFamily._allTransitiveDependencies,
        );

  final PlayType playType;

  @override
  bool operator ==(Object other) {
    return other is PlayProvider && other.playType == playType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playType.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  PlayState runNotifierBuild(
    covariant Play notifier,
  ) {
    return notifier.build(
      playType,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
