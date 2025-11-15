// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offering_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OfferingItemEntity {
  /// Unique identifier for the offering item, auto-generated using UUID
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple where this offering is available
  String get templeId => throw _privateConstructorUsedError;

  /// Name of the offering item that can be made at the temple
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of OfferingItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferingItemEntityCopyWith<OfferingItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingItemEntityCopyWith<$Res> {
  factory $OfferingItemEntityCopyWith(
    OfferingItemEntity value,
    $Res Function(OfferingItemEntity) then,
  ) = _$OfferingItemEntityCopyWithImpl<$Res, OfferingItemEntity>;
  @useResult
  $Res call({String id, String templeId, String name});
}

/// @nodoc
class _$OfferingItemEntityCopyWithImpl<$Res, $Val extends OfferingItemEntity>
    implements $OfferingItemEntityCopyWith<$Res> {
  _$OfferingItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferingItemEntity
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
abstract class _$$OfferingItemEntityImplCopyWith<$Res>
    implements $OfferingItemEntityCopyWith<$Res> {
  factory _$$OfferingItemEntityImplCopyWith(
    _$OfferingItemEntityImpl value,
    $Res Function(_$OfferingItemEntityImpl) then,
  ) = __$$OfferingItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String templeId, String name});
}

/// @nodoc
class __$$OfferingItemEntityImplCopyWithImpl<$Res>
    extends _$OfferingItemEntityCopyWithImpl<$Res, _$OfferingItemEntityImpl>
    implements _$$OfferingItemEntityImplCopyWith<$Res> {
  __$$OfferingItemEntityImplCopyWithImpl(
    _$OfferingItemEntityImpl _value,
    $Res Function(_$OfferingItemEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OfferingItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? templeId = null, Object? name = null}) {
    return _then(
      _$OfferingItemEntityImpl(
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

class _$OfferingItemEntityImpl implements _OfferingItemEntity {
  const _$OfferingItemEntityImpl({
    required this.id,
    required this.templeId,
    required this.name,
  });

  /// Unique identifier for the offering item, auto-generated using UUID
  @override
  final String id;

  /// Foreign key reference to the temple where this offering is available
  @override
  final String templeId;

  /// Name of the offering item that can be made at the temple
  @override
  final String name;

  @override
  String toString() {
    return 'OfferingItemEntity(id: $id, templeId: $templeId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferingItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, name);

  /// Create a copy of OfferingItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferingItemEntityImplCopyWith<_$OfferingItemEntityImpl> get copyWith =>
      __$$OfferingItemEntityImplCopyWithImpl<_$OfferingItemEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _OfferingItemEntity implements OfferingItemEntity {
  const factory _OfferingItemEntity({
    required final String id,
    required final String templeId,
    required final String name,
  }) = _$OfferingItemEntityImpl;

  /// Unique identifier for the offering item, auto-generated using UUID
  @override
  String get id;

  /// Foreign key reference to the temple where this offering is available
  @override
  String get templeId;

  /// Name of the offering item that can be made at the temple
  @override
  String get name;

  /// Create a copy of OfferingItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferingItemEntityImplCopyWith<_$OfferingItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
