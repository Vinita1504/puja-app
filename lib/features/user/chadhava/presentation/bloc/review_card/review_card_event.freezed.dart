// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_card_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewCardEvent {
  String get reviewId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reviewId) reviewExpansionToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reviewId)? reviewExpansionToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reviewId)? reviewExpansionToggled,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewExpansionToggled value)
    reviewExpansionToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewExpansionToggled value)? reviewExpansionToggled,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewExpansionToggled value)? reviewExpansionToggled,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ReviewCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCardEventCopyWith<ReviewCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCardEventCopyWith<$Res> {
  factory $ReviewCardEventCopyWith(
    ReviewCardEvent value,
    $Res Function(ReviewCardEvent) then,
  ) = _$ReviewCardEventCopyWithImpl<$Res, ReviewCardEvent>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class _$ReviewCardEventCopyWithImpl<$Res, $Val extends ReviewCardEvent>
    implements $ReviewCardEventCopyWith<$Res> {
  _$ReviewCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviewId = null}) {
    return _then(
      _value.copyWith(
            reviewId: null == reviewId
                ? _value.reviewId
                : reviewId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewExpansionToggledImplCopyWith<$Res>
    implements $ReviewCardEventCopyWith<$Res> {
  factory _$$ReviewExpansionToggledImplCopyWith(
    _$ReviewExpansionToggledImpl value,
    $Res Function(_$ReviewExpansionToggledImpl) then,
  ) = __$$ReviewExpansionToggledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$ReviewExpansionToggledImplCopyWithImpl<$Res>
    extends _$ReviewCardEventCopyWithImpl<$Res, _$ReviewExpansionToggledImpl>
    implements _$$ReviewExpansionToggledImplCopyWith<$Res> {
  __$$ReviewExpansionToggledImplCopyWithImpl(
    _$ReviewExpansionToggledImpl _value,
    $Res Function(_$ReviewExpansionToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviewId = null}) {
    return _then(
      _$ReviewExpansionToggledImpl(
        reviewId: null == reviewId
            ? _value.reviewId
            : reviewId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ReviewExpansionToggledImpl implements ReviewExpansionToggled {
  const _$ReviewExpansionToggledImpl({required this.reviewId});

  @override
  final String reviewId;

  @override
  String toString() {
    return 'ReviewCardEvent.reviewExpansionToggled(reviewId: $reviewId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewExpansionToggledImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  /// Create a copy of ReviewCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewExpansionToggledImplCopyWith<_$ReviewExpansionToggledImpl>
  get copyWith =>
      __$$ReviewExpansionToggledImplCopyWithImpl<_$ReviewExpansionToggledImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reviewId) reviewExpansionToggled,
  }) {
    return reviewExpansionToggled(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reviewId)? reviewExpansionToggled,
  }) {
    return reviewExpansionToggled?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reviewId)? reviewExpansionToggled,
    required TResult orElse(),
  }) {
    if (reviewExpansionToggled != null) {
      return reviewExpansionToggled(reviewId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewExpansionToggled value)
    reviewExpansionToggled,
  }) {
    return reviewExpansionToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewExpansionToggled value)? reviewExpansionToggled,
  }) {
    return reviewExpansionToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewExpansionToggled value)? reviewExpansionToggled,
    required TResult orElse(),
  }) {
    if (reviewExpansionToggled != null) {
      return reviewExpansionToggled(this);
    }
    return orElse();
  }
}

abstract class ReviewExpansionToggled implements ReviewCardEvent {
  const factory ReviewExpansionToggled({required final String reviewId}) =
      _$ReviewExpansionToggledImpl;

  @override
  String get reviewId;

  /// Create a copy of ReviewCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewExpansionToggledImplCopyWith<_$ReviewExpansionToggledImpl>
  get copyWith => throw _privateConstructorUsedError;
}
