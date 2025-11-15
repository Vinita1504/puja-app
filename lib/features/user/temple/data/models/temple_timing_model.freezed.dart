// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_timing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TempleTimingModel _$TempleTimingModelFromJson(Map<String, dynamic> json) {
  return _TempleTimingModel.fromJson(json);
}

/// @nodoc
mixin _$TempleTimingModel {
  /// Unique identifier for the temple timing entry
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this timing belongs to
  @JsonKey(name: 'temple_id')
  String get templeId => throw _privateConstructorUsedError;

  /// Descriptive label for the timing period
  String get label => throw _privateConstructorUsedError;

  /// Start time of the timing period in string format
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;

  /// End time of the timing period in string format
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;

  /// Serializes this TempleTimingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempleTimingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempleTimingModelCopyWith<TempleTimingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempleTimingModelCopyWith<$Res> {
  factory $TempleTimingModelCopyWith(
    TempleTimingModel value,
    $Res Function(TempleTimingModel) then,
  ) = _$TempleTimingModelCopyWithImpl<$Res, TempleTimingModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String label,
    @JsonKey(name: 'start_time') String startTime,
    @JsonKey(name: 'end_time') String endTime,
  });
}

/// @nodoc
class _$TempleTimingModelCopyWithImpl<$Res, $Val extends TempleTimingModel>
    implements $TempleTimingModelCopyWith<$Res> {
  _$TempleTimingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempleTimingModel
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
abstract class _$$TempleTimingModelImplCopyWith<$Res>
    implements $TempleTimingModelCopyWith<$Res> {
  factory _$$TempleTimingModelImplCopyWith(
    _$TempleTimingModelImpl value,
    $Res Function(_$TempleTimingModelImpl) then,
  ) = __$$TempleTimingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String label,
    @JsonKey(name: 'start_time') String startTime,
    @JsonKey(name: 'end_time') String endTime,
  });
}

/// @nodoc
class __$$TempleTimingModelImplCopyWithImpl<$Res>
    extends _$TempleTimingModelCopyWithImpl<$Res, _$TempleTimingModelImpl>
    implements _$$TempleTimingModelImplCopyWith<$Res> {
  __$$TempleTimingModelImplCopyWithImpl(
    _$TempleTimingModelImpl _value,
    $Res Function(_$TempleTimingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempleTimingModel
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
      _$TempleTimingModelImpl(
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
@JsonSerializable()
class _$TempleTimingModelImpl extends _TempleTimingModel {
  const _$TempleTimingModelImpl({
    required this.id,
    @JsonKey(name: 'temple_id') required this.templeId,
    required this.label,
    @JsonKey(name: 'start_time') required this.startTime,
    @JsonKey(name: 'end_time') required this.endTime,
  }) : super._();

  factory _$TempleTimingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempleTimingModelImplFromJson(json);

  /// Unique identifier for the temple timing entry
  @override
  final String id;

  /// Foreign key reference to the temple this timing belongs to
  @override
  @JsonKey(name: 'temple_id')
  final String templeId;

  /// Descriptive label for the timing period
  @override
  final String label;

  /// Start time of the timing period in string format
  @override
  @JsonKey(name: 'start_time')
  final String startTime;

  /// End time of the timing period in string format
  @override
  @JsonKey(name: 'end_time')
  final String endTime;

  @override
  String toString() {
    return 'TempleTimingModel(id: $id, templeId: $templeId, label: $label, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempleTimingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, templeId, label, startTime, endTime);

  /// Create a copy of TempleTimingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempleTimingModelImplCopyWith<_$TempleTimingModelImpl> get copyWith =>
      __$$TempleTimingModelImplCopyWithImpl<_$TempleTimingModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TempleTimingModelImplToJson(this);
  }
}

abstract class _TempleTimingModel extends TempleTimingModel {
  const factory _TempleTimingModel({
    required final String id,
    @JsonKey(name: 'temple_id') required final String templeId,
    required final String label,
    @JsonKey(name: 'start_time') required final String startTime,
    @JsonKey(name: 'end_time') required final String endTime,
  }) = _$TempleTimingModelImpl;
  const _TempleTimingModel._() : super._();

  factory _TempleTimingModel.fromJson(Map<String, dynamic> json) =
      _$TempleTimingModelImpl.fromJson;

  /// Unique identifier for the temple timing entry
  @override
  String get id;

  /// Foreign key reference to the temple this timing belongs to
  @override
  @JsonKey(name: 'temple_id')
  String get templeId;

  /// Descriptive label for the timing period
  @override
  String get label;

  /// Start time of the timing period in string format
  @override
  @JsonKey(name: 'start_time')
  String get startTime;

  /// End time of the timing period in string format
  @override
  @JsonKey(name: 'end_time')
  String get endTime;

  /// Create a copy of TempleTimingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempleTimingModelImplCopyWith<_$TempleTimingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
