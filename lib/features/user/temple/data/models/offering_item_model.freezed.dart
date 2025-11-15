// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offering_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OfferingItemModel _$OfferingItemModelFromJson(Map<String, dynamic> json) {
  return _OfferingItemModel.fromJson(json);
}

/// @nodoc
mixin _$OfferingItemModel {
  /// Unique identifier for the offering item
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple where this offering is available
  @JsonKey(name: 'temple_id')
  String get templeId => throw _privateConstructorUsedError;

  /// Name of the offering item that can be made at the temple
  String get name => throw _privateConstructorUsedError;

  /// Serializes this OfferingItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferingItemModelCopyWith<OfferingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingItemModelCopyWith<$Res> {
  factory $OfferingItemModelCopyWith(
    OfferingItemModel value,
    $Res Function(OfferingItemModel) then,
  ) = _$OfferingItemModelCopyWithImpl<$Res, OfferingItemModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String name,
  });
}

/// @nodoc
class _$OfferingItemModelCopyWithImpl<$Res, $Val extends OfferingItemModel>
    implements $OfferingItemModelCopyWith<$Res> {
  _$OfferingItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? templeId = null, Object? name = null}) {
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OfferingItemModelImplCopyWith<$Res>
    implements $OfferingItemModelCopyWith<$Res> {
  factory _$$OfferingItemModelImplCopyWith(
    _$OfferingItemModelImpl value,
    $Res Function(_$OfferingItemModelImpl) then,
  ) = __$$OfferingItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'temple_id') String templeId,
    String name,
  });
}

/// @nodoc
class __$$OfferingItemModelImplCopyWithImpl<$Res>
    extends _$OfferingItemModelCopyWithImpl<$Res, _$OfferingItemModelImpl>
    implements _$$OfferingItemModelImplCopyWith<$Res> {
  __$$OfferingItemModelImplCopyWithImpl(
    _$OfferingItemModelImpl _value,
    $Res Function(_$OfferingItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OfferingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? templeId = null, Object? name = null}) {
    return _then(
      _$OfferingItemModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        templeId: null == templeId
            ? _value.templeId
            : templeId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferingItemModelImpl extends _OfferingItemModel {
  const _$OfferingItemModelImpl({
    required this.id,
    @JsonKey(name: 'temple_id') required this.templeId,
    required this.name,
  }) : super._();

  factory _$OfferingItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferingItemModelImplFromJson(json);

  /// Unique identifier for the offering item
  @override
  final String id;

  /// Foreign key reference to the temple where this offering is available
  @override
  @JsonKey(name: 'temple_id')
  final String templeId;

  /// Name of the offering item that can be made at the temple
  @override
  final String name;

  @override
  String toString() {
    return 'OfferingItemModel(id: $id, templeId: $templeId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferingItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, name);

  /// Create a copy of OfferingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferingItemModelImplCopyWith<_$OfferingItemModelImpl> get copyWith =>
      __$$OfferingItemModelImplCopyWithImpl<_$OfferingItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferingItemModelImplToJson(this);
  }
}

abstract class _OfferingItemModel extends OfferingItemModel {
  const factory _OfferingItemModel({
    required final String id,
    @JsonKey(name: 'temple_id') required final String templeId,
    required final String name,
  }) = _$OfferingItemModelImpl;
  const _OfferingItemModel._() : super._();

  factory _OfferingItemModel.fromJson(Map<String, dynamic> json) =
      _$OfferingItemModelImpl.fromJson;

  /// Unique identifier for the offering item
  @override
  String get id;

  /// Foreign key reference to the temple where this offering is available
  @override
  @JsonKey(name: 'temple_id')
  String get templeId;

  /// Name of the offering item that can be made at the temple
  @override
  String get name;

  /// Create a copy of OfferingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferingItemModelImplCopyWith<_$OfferingItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
