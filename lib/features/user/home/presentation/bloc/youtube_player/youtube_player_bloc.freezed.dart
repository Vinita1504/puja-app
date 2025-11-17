// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$YoutubePlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(bool isReady) readyChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(bool isReady)? readyChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(bool isReady)? readyChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReadyChanged value) readyChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ReadyChanged value)? readyChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReadyChanged value)? readyChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubePlayerEventCopyWith<$Res> {
  factory $YoutubePlayerEventCopyWith(
    YoutubePlayerEvent value,
    $Res Function(YoutubePlayerEvent) then,
  ) = _$YoutubePlayerEventCopyWithImpl<$Res, YoutubePlayerEvent>;
}

/// @nodoc
class _$YoutubePlayerEventCopyWithImpl<$Res, $Val extends YoutubePlayerEvent>
    implements $YoutubePlayerEventCopyWith<$Res> {
  _$YoutubePlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$YoutubePlayerEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'YoutubePlayerEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(bool isReady) readyChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(bool isReady)? readyChanged,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(bool isReady)? readyChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReadyChanged value) readyChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ReadyChanged value)? readyChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReadyChanged value)? readyChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements YoutubePlayerEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$ReadyChangedImplCopyWith<$Res> {
  factory _$$ReadyChangedImplCopyWith(
    _$ReadyChangedImpl value,
    $Res Function(_$ReadyChangedImpl) then,
  ) = __$$ReadyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isReady});
}

/// @nodoc
class __$$ReadyChangedImplCopyWithImpl<$Res>
    extends _$YoutubePlayerEventCopyWithImpl<$Res, _$ReadyChangedImpl>
    implements _$$ReadyChangedImplCopyWith<$Res> {
  __$$ReadyChangedImplCopyWithImpl(
    _$ReadyChangedImpl _value,
    $Res Function(_$ReadyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isReady = null}) {
    return _then(
      _$ReadyChangedImpl(
        null == isReady
            ? _value.isReady
            : isReady // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ReadyChangedImpl implements _ReadyChanged {
  const _$ReadyChangedImpl(this.isReady);

  @override
  final bool isReady;

  @override
  String toString() {
    return 'YoutubePlayerEvent.readyChanged(isReady: $isReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyChangedImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady);

  /// Create a copy of YoutubePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyChangedImplCopyWith<_$ReadyChangedImpl> get copyWith =>
      __$$ReadyChangedImplCopyWithImpl<_$ReadyChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(bool isReady) readyChanged,
  }) {
    return readyChanged(isReady);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(bool isReady)? readyChanged,
  }) {
    return readyChanged?.call(isReady);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(bool isReady)? readyChanged,
    required TResult orElse(),
  }) {
    if (readyChanged != null) {
      return readyChanged(isReady);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReadyChanged value) readyChanged,
  }) {
    return readyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ReadyChanged value)? readyChanged,
  }) {
    return readyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReadyChanged value)? readyChanged,
    required TResult orElse(),
  }) {
    if (readyChanged != null) {
      return readyChanged(this);
    }
    return orElse();
  }
}

abstract class _ReadyChanged implements YoutubePlayerEvent {
  const factory _ReadyChanged(final bool isReady) = _$ReadyChangedImpl;

  bool get isReady;

  /// Create a copy of YoutubePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyChangedImplCopyWith<_$ReadyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubePlayerState {
  String get videoId => throw _privateConstructorUsedError;
  YoutubePlayerController? get controller => throw _privateConstructorUsedError;
  bool get isReady => throw _privateConstructorUsedError;

  /// Create a copy of YoutubePlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubePlayerStateCopyWith<YoutubePlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubePlayerStateCopyWith<$Res> {
  factory $YoutubePlayerStateCopyWith(
    YoutubePlayerState value,
    $Res Function(YoutubePlayerState) then,
  ) = _$YoutubePlayerStateCopyWithImpl<$Res, YoutubePlayerState>;
  @useResult
  $Res call({
    String videoId,
    YoutubePlayerController? controller,
    bool isReady,
  });
}

/// @nodoc
class _$YoutubePlayerStateCopyWithImpl<$Res, $Val extends YoutubePlayerState>
    implements $YoutubePlayerStateCopyWith<$Res> {
  _$YoutubePlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubePlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? controller = freezed,
    Object? isReady = null,
  }) {
    return _then(
      _value.copyWith(
            videoId: null == videoId
                ? _value.videoId
                : videoId // ignore: cast_nullable_to_non_nullable
                      as String,
            controller: freezed == controller
                ? _value.controller
                : controller // ignore: cast_nullable_to_non_nullable
                      as YoutubePlayerController?,
            isReady: null == isReady
                ? _value.isReady
                : isReady // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$YoutubePlayerStateImplCopyWith<$Res>
    implements $YoutubePlayerStateCopyWith<$Res> {
  factory _$$YoutubePlayerStateImplCopyWith(
    _$YoutubePlayerStateImpl value,
    $Res Function(_$YoutubePlayerStateImpl) then,
  ) = __$$YoutubePlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String videoId,
    YoutubePlayerController? controller,
    bool isReady,
  });
}

/// @nodoc
class __$$YoutubePlayerStateImplCopyWithImpl<$Res>
    extends _$YoutubePlayerStateCopyWithImpl<$Res, _$YoutubePlayerStateImpl>
    implements _$$YoutubePlayerStateImplCopyWith<$Res> {
  __$$YoutubePlayerStateImplCopyWithImpl(
    _$YoutubePlayerStateImpl _value,
    $Res Function(_$YoutubePlayerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YoutubePlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? controller = freezed,
    Object? isReady = null,
  }) {
    return _then(
      _$YoutubePlayerStateImpl(
        videoId: null == videoId
            ? _value.videoId
            : videoId // ignore: cast_nullable_to_non_nullable
                  as String,
        controller: freezed == controller
            ? _value.controller
            : controller // ignore: cast_nullable_to_non_nullable
                  as YoutubePlayerController?,
        isReady: null == isReady
            ? _value.isReady
            : isReady // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$YoutubePlayerStateImpl implements _YoutubePlayerState {
  const _$YoutubePlayerStateImpl({
    required this.videoId,
    this.controller,
    this.isReady = false,
  });

  @override
  final String videoId;
  @override
  final YoutubePlayerController? controller;
  @override
  @JsonKey()
  final bool isReady;

  @override
  String toString() {
    return 'YoutubePlayerState(videoId: $videoId, controller: $controller, isReady: $isReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubePlayerStateImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.isReady, isReady) || other.isReady == isReady));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, controller, isReady);

  /// Create a copy of YoutubePlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubePlayerStateImplCopyWith<_$YoutubePlayerStateImpl> get copyWith =>
      __$$YoutubePlayerStateImplCopyWithImpl<_$YoutubePlayerStateImpl>(
        this,
        _$identity,
      );
}

abstract class _YoutubePlayerState implements YoutubePlayerState {
  const factory _YoutubePlayerState({
    required final String videoId,
    final YoutubePlayerController? controller,
    final bool isReady,
  }) = _$YoutubePlayerStateImpl;

  @override
  String get videoId;
  @override
  YoutubePlayerController? get controller;
  @override
  bool get isReady;

  /// Create a copy of YoutubePlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubePlayerStateImplCopyWith<_$YoutubePlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
