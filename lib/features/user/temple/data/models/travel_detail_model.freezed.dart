// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TravelDetailModel _$TravelDetailModelFromJson(Map<String, dynamic> json) {
  return _TravelDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TravelDetailModel {
  /// Unique identifier for the travel detail entry
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this travel information is for
  @JsonKey(name: 'temple_id')
  String get templeId => throw _privateConstructorUsedError;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  @JsonKey(
    name: 'mode',
    fromJson: _travelModeFromJson,
    toJson: _travelModeToJson,
  )
  TravelMode get mode => throw _privateConstructorUsedError;

  /// Full descriptive text providing detailed travel instructions and information
  String get details => throw _privateConstructorUsedError;

  /// Serializes this TravelDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelDetailModelCopyWith<TravelDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailModelCopyWith<$Res> {
  factory $TravelDetailModelCopyWith(
    TravelDetailModel value,
    $Res Function(TravelDetailModel) then,
  ) = _$TravelDetailModelCopyWithImpl<$Res, TravelDetailModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    @JsonKey(
      name: 'mode',
      fromJson: _travelModeFromJson,
      toJson: _travelModeToJson,
    )
    TravelMode mode,
    String details,
  });
}

/// @nodoc
class _$TravelDetailModelCopyWithImpl<$Res, $Val extends TravelDetailModel>
    implements $TravelDetailModelCopyWith<$Res> {
  _$TravelDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelDetailModel
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
abstract class _$$TravelDetailModelImplCopyWith<$Res>
    implements $TravelDetailModelCopyWith<$Res> {
  factory _$$TravelDetailModelImplCopyWith(
    _$TravelDetailModelImpl value,
    $Res Function(_$TravelDetailModelImpl) then,
  ) = __$$TravelDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    @JsonKey(
      name: 'mode',
      fromJson: _travelModeFromJson,
      toJson: _travelModeToJson,
    )
    TravelMode mode,
    String details,
  });
}

/// @nodoc
class __$$TravelDetailModelImplCopyWithImpl<$Res>
    extends _$TravelDetailModelCopyWithImpl<$Res, _$TravelDetailModelImpl>
    implements _$$TravelDetailModelImplCopyWith<$Res> {
  __$$TravelDetailModelImplCopyWithImpl(
    _$TravelDetailModelImpl _value,
    $Res Function(_$TravelDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelDetailModel
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
      _$TravelDetailModelImpl(
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
@JsonSerializable()
class _$TravelDetailModelImpl extends _TravelDetailModel {
  const _$TravelDetailModelImpl({
    required this.id,
    @JsonKey(name: 'temple_id') required this.templeId,
    @JsonKey(
      name: 'mode',
      fromJson: _travelModeFromJson,
      toJson: _travelModeToJson,
    )
    required this.mode,
    required this.details,
  }) : super._();

  factory _$TravelDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelDetailModelImplFromJson(json);

  /// Unique identifier for the travel detail entry
  @override
  final String id;

  /// Foreign key reference to the temple this travel information is for
  @override
  @JsonKey(name: 'temple_id')
  final String templeId;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  @override
  @JsonKey(
    name: 'mode',
    fromJson: _travelModeFromJson,
    toJson: _travelModeToJson,
  )
  final TravelMode mode;

  /// Full descriptive text providing detailed travel instructions and information
  @override
  final String details;

  @override
  String toString() {
    return 'TravelDetailModel(id: $id, templeId: $templeId, mode: $mode, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, mode, details);

  /// Create a copy of TravelDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDetailModelImplCopyWith<_$TravelDetailModelImpl> get copyWith =>
      __$$TravelDetailModelImplCopyWithImpl<_$TravelDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelDetailModelImplToJson(this);
  }
}

abstract class _TravelDetailModel extends TravelDetailModel {
  const factory _TravelDetailModel({
    required final String id,
    @JsonKey(name: 'temple_id') required final String templeId,
    @JsonKey(
      name: 'mode',
      fromJson: _travelModeFromJson,
      toJson: _travelModeToJson,
    )
    required final TravelMode mode,
    required final String details,
  }) = _$TravelDetailModelImpl;
  const _TravelDetailModel._() : super._();

  factory _TravelDetailModel.fromJson(Map<String, dynamic> json) =
      _$TravelDetailModelImpl.fromJson;

  /// Unique identifier for the travel detail entry
  @override
  String get id;

  /// Foreign key reference to the temple this travel information is for
  @override
  @JsonKey(name: 'temple_id')
  String get templeId;

  /// Transportation mode to reach the temple: AIRPLANE, TRAIN, or ROAD
  @override
  @JsonKey(
    name: 'mode',
    fromJson: _travelModeFromJson,
    toJson: _travelModeToJson,
  )
  TravelMode get mode;

  /// Full descriptive text providing detailed travel instructions and information
  @override
  String get details;

  /// Create a copy of TravelDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelDetailModelImplCopyWith<_$TravelDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
