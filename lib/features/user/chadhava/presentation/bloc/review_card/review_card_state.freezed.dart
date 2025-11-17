// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewCardState {
  /// Set of review IDs that are currently expanded
  Set<String> get expandedReviewIds => throw _privateConstructorUsedError;

  /// Create a copy of ReviewCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCardStateCopyWith<ReviewCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCardStateCopyWith<$Res> {
  factory $ReviewCardStateCopyWith(
    ReviewCardState value,
    $Res Function(ReviewCardState) then,
  ) = _$ReviewCardStateCopyWithImpl<$Res, ReviewCardState>;
  @useResult
  $Res call({Set<String> expandedReviewIds});
}

/// @nodoc
class _$ReviewCardStateCopyWithImpl<$Res, $Val extends ReviewCardState>
    implements $ReviewCardStateCopyWith<$Res> {
  _$ReviewCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expandedReviewIds = null}) {
    return _then(
      _value.copyWith(
            expandedReviewIds: null == expandedReviewIds
                ? _value.expandedReviewIds
                : expandedReviewIds // ignore: cast_nullable_to_non_nullable
                      as Set<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewCardStateImplCopyWith<$Res>
    implements $ReviewCardStateCopyWith<$Res> {
  factory _$$ReviewCardStateImplCopyWith(
    _$ReviewCardStateImpl value,
    $Res Function(_$ReviewCardStateImpl) then,
  ) = __$$ReviewCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> expandedReviewIds});
}

/// @nodoc
class __$$ReviewCardStateImplCopyWithImpl<$Res>
    extends _$ReviewCardStateCopyWithImpl<$Res, _$ReviewCardStateImpl>
    implements _$$ReviewCardStateImplCopyWith<$Res> {
  __$$ReviewCardStateImplCopyWithImpl(
    _$ReviewCardStateImpl _value,
    $Res Function(_$ReviewCardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expandedReviewIds = null}) {
    return _then(
      _$ReviewCardStateImpl(
        expandedReviewIds: null == expandedReviewIds
            ? _value._expandedReviewIds
            : expandedReviewIds // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
      ),
    );
  }
}

/// @nodoc

class _$ReviewCardStateImpl implements _ReviewCardState {
  const _$ReviewCardStateImpl({final Set<String> expandedReviewIds = const {}})
    : _expandedReviewIds = expandedReviewIds;

  /// Set of review IDs that are currently expanded
  final Set<String> _expandedReviewIds;

  /// Set of review IDs that are currently expanded
  @override
  @JsonKey()
  Set<String> get expandedReviewIds {
    if (_expandedReviewIds is EqualUnmodifiableSetView)
      return _expandedReviewIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_expandedReviewIds);
  }

  @override
  String toString() {
    return 'ReviewCardState(expandedReviewIds: $expandedReviewIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCardStateImpl &&
            const DeepCollectionEquality().equals(
              other._expandedReviewIds,
              _expandedReviewIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_expandedReviewIds),
  );

  /// Create a copy of ReviewCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCardStateImplCopyWith<_$ReviewCardStateImpl> get copyWith =>
      __$$ReviewCardStateImplCopyWithImpl<_$ReviewCardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ReviewCardState implements ReviewCardState {
  const factory _ReviewCardState({final Set<String> expandedReviewIds}) =
      _$ReviewCardStateImpl;

  /// Set of review IDs that are currently expanded
  @override
  Set<String> get expandedReviewIds;

  /// Create a copy of ReviewCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewCardStateImplCopyWith<_$ReviewCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
