// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TempleMediaEntity {
  /// Unique identifier for the temple media entry, auto-generated using UUID
  String get id => throw _privateConstructorUsedError;

  /// Foreign key reference to the temple this media belongs to
  String get templeId => throw _privateConstructorUsedError;

  /// URL where the media file (image or video) is stored or hosted
  String get url => throw _privateConstructorUsedError;

  /// Type of media, either IMAGE or VIDEO
  MediaType get type => throw _privateConstructorUsedError;

  /// Create a copy of TempleMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempleMediaEntityCopyWith<TempleMediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempleMediaEntityCopyWith<$Res> {
  factory $TempleMediaEntityCopyWith(
    TempleMediaEntity value,
    $Res Function(TempleMediaEntity) then,
  ) = _$TempleMediaEntityCopyWithImpl<$Res, TempleMediaEntity>;
  @useResult
  $Res call({String id, String templeId, String url, MediaType type});
}

/// @nodoc
class _$TempleMediaEntityCopyWithImpl<$Res, $Val extends TempleMediaEntity>
    implements $TempleMediaEntityCopyWith<$Res> {
  _$TempleMediaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempleMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? url = null,
    Object? type = null,
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
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as MediaType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TempleMediaEntityImplCopyWith<$Res>
    implements $TempleMediaEntityCopyWith<$Res> {
  factory _$$TempleMediaEntityImplCopyWith(
    _$TempleMediaEntityImpl value,
    $Res Function(_$TempleMediaEntityImpl) then,
  ) = __$$TempleMediaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String templeId, String url, MediaType type});
}

/// @nodoc
class __$$TempleMediaEntityImplCopyWithImpl<$Res>
    extends _$TempleMediaEntityCopyWithImpl<$Res, _$TempleMediaEntityImpl>
    implements _$$TempleMediaEntityImplCopyWith<$Res> {
  __$$TempleMediaEntityImplCopyWithImpl(
    _$TempleMediaEntityImpl _value,
    $Res Function(_$TempleMediaEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempleMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templeId = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(
      _$TempleMediaEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        templeId: null == templeId
            ? _value.templeId
            : templeId // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MediaType,
      ),
    );
  }
}

/// @nodoc

class _$TempleMediaEntityImpl implements _TempleMediaEntity {
  const _$TempleMediaEntityImpl({
    required this.id,
    required this.templeId,
    required this.url,
    required this.type,
  });

  /// Unique identifier for the temple media entry, auto-generated using UUID
  @override
  final String id;

  /// Foreign key reference to the temple this media belongs to
  @override
  final String templeId;

  /// URL where the media file (image or video) is stored or hosted
  @override
  final String url;

  /// Type of media, either IMAGE or VIDEO
  @override
  final MediaType type;

  @override
  String toString() {
    return 'TempleMediaEntity(id: $id, templeId: $templeId, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempleMediaEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.templeId, templeId) ||
                other.templeId == templeId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, templeId, url, type);

  /// Create a copy of TempleMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempleMediaEntityImplCopyWith<_$TempleMediaEntityImpl> get copyWith =>
      __$$TempleMediaEntityImplCopyWithImpl<_$TempleMediaEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _TempleMediaEntity implements TempleMediaEntity {
  const factory _TempleMediaEntity({
    required final String id,
    required final String templeId,
    required final String url,
    required final MediaType type,
  }) = _$TempleMediaEntityImpl;

  /// Unique identifier for the temple media entry, auto-generated using UUID
  @override
  String get id;

  /// Foreign key reference to the temple this media belongs to
  @override
  String get templeId;

  /// URL where the media file (image or video) is stored or hosted
  @override
  String get url;

  /// Type of media, either IMAGE or VIDEO
  @override
  MediaType get type;

  /// Create a copy of TempleMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempleMediaEntityImplCopyWith<_$TempleMediaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
