// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeityEntity {
  /// Unique identifier for the deity, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Name of the deity, must be unique across all deities
  String get name => throw _privateConstructorUsedError;

  /// Optional mythological or historical story associated with the deity
  String? get story => throw _privateConstructorUsedError;

  /// Optional URL to the main image of the deity
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Optional URL to a smaller thumbnail version of the deity image
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Whether this deity is currently active and visible in the system
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the deity record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the deity record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of DeityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeityEntityCopyWith<DeityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeityEntityCopyWith<$Res> {
  factory $DeityEntityCopyWith(
    DeityEntity value,
    $Res Function(DeityEntity) then,
  ) = _$DeityEntityCopyWithImpl<$Res, DeityEntity>;
  @useResult
  $Res call({
    String id,
    String name,
    String? story,
    String? imageUrl,
    String? thumbnailUrl,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$DeityEntityCopyWithImpl<$Res, $Val extends DeityEntity>
    implements $DeityEntityCopyWith<$Res> {
  _$DeityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? story = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            story: freezed == story
                ? _value.story
                : story // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            thumbnailUrl: freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeityEntityImplCopyWith<$Res>
    implements $DeityEntityCopyWith<$Res> {
  factory _$$DeityEntityImplCopyWith(
    _$DeityEntityImpl value,
    $Res Function(_$DeityEntityImpl) then,
  ) = __$$DeityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? story,
    String? imageUrl,
    String? thumbnailUrl,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$DeityEntityImplCopyWithImpl<$Res>
    extends _$DeityEntityCopyWithImpl<$Res, _$DeityEntityImpl>
    implements _$$DeityEntityImplCopyWith<$Res> {
  __$$DeityEntityImplCopyWithImpl(
    _$DeityEntityImpl _value,
    $Res Function(_$DeityEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? story = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$DeityEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        story: freezed == story
            ? _value.story
            : story // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _value.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$DeityEntityImpl implements _DeityEntity {
  const _$DeityEntityImpl({
    required this.id,
    required this.name,
    this.story,
    this.imageUrl,
    this.thumbnailUrl,
    this.isActive = true,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Unique identifier for the deity, auto-generated using cuid
  @override
  final String id;

  /// Name of the deity, must be unique across all deities
  @override
  final String name;

  /// Optional mythological or historical story associated with the deity
  @override
  final String? story;

  /// Optional URL to the main image of the deity
  @override
  final String? imageUrl;

  /// Optional URL to a smaller thumbnail version of the deity image
  @override
  final String? thumbnailUrl;

  /// Whether this deity is currently active and visible in the system
  @override
  @JsonKey()
  final bool isActive;

  /// Timestamp when the deity record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the deity record was last updated
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'DeityEntity(id: $id, name: $name, story: $story, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    story,
    imageUrl,
    thumbnailUrl,
    isActive,
    createdAt,
    updatedAt,
  );

  /// Create a copy of DeityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeityEntityImplCopyWith<_$DeityEntityImpl> get copyWith =>
      __$$DeityEntityImplCopyWithImpl<_$DeityEntityImpl>(this, _$identity);
}

abstract class _DeityEntity implements DeityEntity {
  const factory _DeityEntity({
    required final String id,
    required final String name,
    final String? story,
    final String? imageUrl,
    final String? thumbnailUrl,
    final bool isActive,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$DeityEntityImpl;

  /// Unique identifier for the deity, auto-generated using cuid
  @override
  String get id;

  /// Name of the deity, must be unique across all deities
  @override
  String get name;

  /// Optional mythological or historical story associated with the deity
  @override
  String? get story;

  /// Optional URL to the main image of the deity
  @override
  String? get imageUrl;

  /// Optional URL to a smaller thumbnail version of the deity image
  @override
  String? get thumbnailUrl;

  /// Whether this deity is currently active and visible in the system
  @override
  bool get isActive;

  /// Timestamp when the deity record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the deity record was last updated
  @override
  DateTime get updatedAt;

  /// Create a copy of DeityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeityEntityImplCopyWith<_$DeityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
