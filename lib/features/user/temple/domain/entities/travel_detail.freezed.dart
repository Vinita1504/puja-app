// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TravelDetailEntity {
  /// Unique identifier for the travel detail entry, auto-generated using UUID
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this travel information is for
  String get templeId => throw _privateConstructorUsedError;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  TravelMode get mode => throw _privateConstructorUsedError;

  /// Full descriptive text providing detailed travel instructions and information
  String get details => throw _privateConstructorUsedError;

  /// Create a copy of TravelDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelDetailEntityCopyWith<TravelDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailEntityCopyWith<$Res> {
  factory $TravelDetailEntityCopyWith(
    TravelDetailEntity value,
    $Res Function(TravelDetailEntity) then,
  ) = _$TravelDetailEntityCopyWithImpl<$Res, TravelDetailEntity>;
  @useResult
  $Res call({String id, String templeId, TravelMode mode, String details});
}

/// @nodoc
class _$TravelDetailEntityCopyWithImpl<$Res, $Val extends TravelDetailEntity>
    implements $TravelDetailEntityCopyWith<$Res> {
  _$TravelDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? mode = null,
    Object? details = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            templeId: null == templeId
                ? _value.templeId
                : templeId // ignore: cast_nullable_to_non_nullable
                      as String,
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as TravelMode,
            details: null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TravelDetailEntityImplCopyWith<$Res>
    implements $TravelDetailEntityCopyWith<$Res> {
  factory _$$TravelDetailEntityImplCopyWith(
    _$TravelDetailEntityImpl value,
    $Res Function(_$TravelDetailEntityImpl) then,
  ) = __$$TravelDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String templeId, TravelMode mode, String details});
}

/// @nodoc
class __$$TravelDetailEntityImplCopyWithImpl<$Res>
    extends _$TravelDetailEntityCopyWithImpl<$Res, _$TravelDetailEntityImpl>
    implements _$$TravelDetailEntityImplCopyWith<$Res> {
  __$$TravelDetailEntityImplCopyWithImpl(
    _$TravelDetailEntityImpl _value,
    $Res Function(_$TravelDetailEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? mode = null,
    Object? details = null,
  }) {
    return _then(
      _$TravelDetailEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        templeId: null == templeId
            ? _value.templeId
            : templeId // ignore: cast_nullable_to_non_nullable
                  as String,
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as TravelMode,
        details: null == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TravelDetailEntityImpl implements _TravelDetailEntity {
  const _$TravelDetailEntityImpl({
    required this.id,
    required this.templeId,
    required this.mode,
    required this.details,
  });

  /// Unique identifier for the travel detail entry, auto-generated using UUID
  @override
  final String id;

  /// Foreign key reference to the temple this travel information is for
  @override
  final String templeId;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  @override
  final TravelMode mode;

  /// Full descriptive text providing detailed travel instructions and information
  @override
  final String details;

  @override
  String toString() {
    return 'TravelDetailEntity(id: $id, templeId: $templeId, mode: $mode, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDetailEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, mode, details);

  /// Create a copy of TravelDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDetailEntityImplCopyWith<_$TravelDetailEntityImpl> get copyWith =>
      __$$TravelDetailEntityImplCopyWithImpl<_$TravelDetailEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TravelDetailEntity implements TravelDetailEntity {
  const factory _TravelDetailEntity({
    required final String id,
    required final String templeId,
    required final TravelMode mode,
    required final String details,
  }) = _$TravelDetailEntityImpl;

  /// Unique identifier for the travel detail entry, auto-generated using UUID
  @override
  String get id;

  /// Foreign key reference to the temple this travel information is for
  @override
  String get templeId;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  @override
  TravelMode get mode;

  /// Full descriptive text providing detailed travel instructions and information
  @override
  String get details;

  /// Create a copy of TravelDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelDetailEntityImplCopyWith<_$TravelDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
