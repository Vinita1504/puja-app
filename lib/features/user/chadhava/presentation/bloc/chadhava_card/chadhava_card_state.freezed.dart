// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadhava_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChadhavaCardState {
  bool get isDescriptionExpanded => throw _privateConstructorUsedError;

  /// Create a copy of ChadhavaCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChadhavaCardStateCopyWith<ChadhavaCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChadhavaCardStateCopyWith<$Res> {
  factory $ChadhavaCardStateCopyWith(
    ChadhavaCardState value,
    $Res Function(ChadhavaCardState) then,
  ) = _$ChadhavaCardStateCopyWithImpl<$Res, ChadhavaCardState>;
  @useResult
  $Res call({bool isDescriptionExpanded});
}

/// @nodoc
class _$ChadhavaCardStateCopyWithImpl<$Res, $Val extends ChadhavaCardState>
    implements $ChadhavaCardStateCopyWith<$Res> {
  _$ChadhavaCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChadhavaCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isDescriptionExpanded = null}) {
    return _then(
      _value.copyWith(
            isDescriptionExpanded: null == isDescriptionExpanded
                ? _value.isDescriptionExpanded
                : isDescriptionExpanded // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChadhavaCardStateImplCopyWith<$Res>
    implements $ChadhavaCardStateCopyWith<$Res> {
  factory _$$ChadhavaCardStateImplCopyWith(
    _$ChadhavaCardStateImpl value,
    $Res Function(_$ChadhavaCardStateImpl) then,
  ) = __$$ChadhavaCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDescriptionExpanded});
}

/// @nodoc
class __$$ChadhavaCardStateImplCopyWithImpl<$Res>
    extends _$ChadhavaCardStateCopyWithImpl<$Res, _$ChadhavaCardStateImpl>
    implements _$$ChadhavaCardStateImplCopyWith<$Res> {
  __$$ChadhavaCardStateImplCopyWithImpl(
    _$ChadhavaCardStateImpl _value,
    $Res Function(_$ChadhavaCardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChadhavaCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isDescriptionExpanded = null}) {
    return _then(
      _$ChadhavaCardStateImpl(
        isDescriptionExpanded: null == isDescriptionExpanded
            ? _value.isDescriptionExpanded
            : isDescriptionExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChadhavaCardStateImpl implements _ChadhavaCardState {
  const _$ChadhavaCardStateImpl({this.isDescriptionExpanded = false});

  @override
  @JsonKey()
  final bool isDescriptionExpanded;

  @override
  String toString() {
    return 'ChadhavaCardState(isDescriptionExpanded: $isDescriptionExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChadhavaCardStateImpl &&
            (identical(other.isDescriptionExpanded, isDescriptionExpanded) ||
                other.isDescriptionExpanded == isDescriptionExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDescriptionExpanded);

  /// Create a copy of ChadhavaCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChadhavaCardStateImplCopyWith<_$ChadhavaCardStateImpl> get copyWith =>
      __$$ChadhavaCardStateImplCopyWithImpl<_$ChadhavaCardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChadhavaCardState implements ChadhavaCardState {
  const factory _ChadhavaCardState({final bool isDescriptionExpanded}) =
      _$ChadhavaCardStateImpl;

  @override
  bool get isDescriptionExpanded;

  /// Create a copy of ChadhavaCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChadhavaCardStateImplCopyWith<_$ChadhavaCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
