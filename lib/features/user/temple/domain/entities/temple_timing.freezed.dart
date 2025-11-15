// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_timing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TempleTimingEntity {
  /// Unique identifier for the temple timing entry, auto-generated using UUID
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this timing belongs to
  String get templeId => throw _privateConstructorUsedError;

  /// Descriptive label for the timing period, e.g., "Morning Aarti", "Temple Opening"
  String get label => throw _privateConstructorUsedError;

  /// Start time of the timing period in string format, e.g., "07:00 AM"
  String get startTime => throw _privateConstructorUsedError;

  /// End time of the timing period in string format, e.g., "08:00 AM"
  String get endTime => throw _privateConstructorUsedError;

  /// Create a copy of TempleTimingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempleTimingEntityCopyWith<TempleTimingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempleTimingEntityCopyWith<$Res> {
  factory $TempleTimingEntityCopyWith(
    TempleTimingEntity value,
    $Res Function(TempleTimingEntity) then,
  ) = _$TempleTimingEntityCopyWithImpl<$Res, TempleTimingEntity>;
  @useResult
  $Res call({
    String id,
    String templeId,
    String label,
    String startTime,
    String endTime,
  });
}

/// @nodoc
class _$TempleTimingEntityCopyWithImpl<$Res, $Val extends TempleTimingEntity>
    implements $TempleTimingEntityCopyWith<$Res> {
  _$TempleTimingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempleTimingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? label = null,
    Object? startTime = null,
    Object? endTime = null,
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
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String,
            endTime: null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TempleTimingEntityImplCopyWith<$Res>
    implements $TempleTimingEntityCopyWith<$Res> {
  factory _$$TempleTimingEntityImplCopyWith(
    _$TempleTimingEntityImpl value,
    $Res Function(_$TempleTimingEntityImpl) then,
  ) = __$$TempleTimingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String templeId,
    String label,
    String startTime,
    String endTime,
  });
}

/// @nodoc
class __$$TempleTimingEntityImplCopyWithImpl<$Res>
    extends _$TempleTimingEntityCopyWithImpl<$Res, _$TempleTimingEntityImpl>
    implements _$$TempleTimingEntityImplCopyWith<$Res> {
  __$$TempleTimingEntityImplCopyWithImpl(
    _$TempleTimingEntityImpl _value,
    $Res Function(_$TempleTimingEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempleTimingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? label = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(
      _$TempleTimingEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        templeId: null == templeId
            ? _value.templeId
            : templeId // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String,
        endTime: null == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TempleTimingEntityImpl implements _TempleTimingEntity {
  const _$TempleTimingEntityImpl({
    required this.id,
    required this.templeId,
    required this.label,
    required this.startTime,
    required this.endTime,
  });

  /// Unique identifier for the temple timing entry, auto-generated using UUID
  @override
  final String id;

  /// Foreign key reference to the temple this timing belongs to
  @override
  final String templeId;

  /// Descriptive label for the timing period, e.g., "Morning Aarti", "Temple Opening"
  @override
  final String label;

  /// Start time of the timing period in string format, e.g., "07:00 AM"
  @override
  final String startTime;

  /// End time of the timing period in string format, e.g., "08:00 AM"
  @override
  final String endTime;

  @override
  String toString() {
    return 'TempleTimingEntity(id: $id, templeId: $templeId, label: $label, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempleTimingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, templeId, label, startTime, endTime);

  /// Create a copy of TempleTimingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempleTimingEntityImplCopyWith<_$TempleTimingEntityImpl> get copyWith =>
      __$$TempleTimingEntityImplCopyWithImpl<_$TempleTimingEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TempleTimingEntity implements TempleTimingEntity {
  const factory _TempleTimingEntity({
    required final String id,
    required final String templeId,
    required final String label,
    required final String startTime,
    required final String endTime,
  }) = _$TempleTimingEntityImpl;

  /// Unique identifier for the temple timing entry, auto-generated using UUID
  @override
  String get id;

  /// Foreign key reference to the temple this timing belongs to
  @override
  String get templeId;

  /// Descriptive label for the timing period, e.g., "Morning Aarti", "Temple Opening"
  @override
  String get label;

  /// Start time of the timing period in string format, e.g., "07:00 AM"
  @override
  String get startTime;

  /// End time of the timing period in string format, e.g., "08:00 AM"
  @override
  String get endTime;

  /// Create a copy of TempleTimingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempleTimingEntityImplCopyWith<_$TempleTimingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
