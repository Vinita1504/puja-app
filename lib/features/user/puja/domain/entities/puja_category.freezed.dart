// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaCategoryEntity {
  /// Unique identifier for the puja category, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Name of the category as displayed in the application
  String get name => throw _privateConstructorUsedError;

  /// Optional description explaining what pujas belong to this category
  String? get description => throw _privateConstructorUsedError;

  /// URL-friendly unique identifier for the category used in routing
  String get slug => throw _privateConstructorUsedError;

  /// Whether this category is currently active and visible
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the category record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the category record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional URL to an image representing this category
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Optional foreign key to parent category for hierarchical organization
  String? get parentCategoryId => throw _privateConstructorUsedError;

  /// Create a copy of PujaCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaCategoryEntityCopyWith<PujaCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaCategoryEntityCopyWith<$Res> {
  factory $PujaCategoryEntityCopyWith(
    PujaCategoryEntity value,
    $Res Function(PujaCategoryEntity) then,
  ) = _$PujaCategoryEntityCopyWithImpl<$Res, PujaCategoryEntity>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String slug,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    String? parentCategoryId,
  });
}

/// @nodoc
class _$PujaCategoryEntityCopyWithImpl<$Res, $Val extends PujaCategoryEntity>
    implements $PujaCategoryEntityCopyWith<$Res> {
  _$PujaCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? slug = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? parentCategoryId = freezed,
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
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
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
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentCategoryId: freezed == parentCategoryId
                ? _value.parentCategoryId
                : parentCategoryId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PujaCategoryEntityImplCopyWith<$Res>
    implements $PujaCategoryEntityCopyWith<$Res> {
  factory _$$PujaCategoryEntityImplCopyWith(
    _$PujaCategoryEntityImpl value,
    $Res Function(_$PujaCategoryEntityImpl) then,
  ) = __$$PujaCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String slug,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    String? parentCategoryId,
  });
}

/// @nodoc
class __$$PujaCategoryEntityImplCopyWithImpl<$Res>
    extends _$PujaCategoryEntityCopyWithImpl<$Res, _$PujaCategoryEntityImpl>
    implements _$$PujaCategoryEntityImplCopyWith<$Res> {
  __$$PujaCategoryEntityImplCopyWithImpl(
    _$PujaCategoryEntityImpl _value,
    $Res Function(_$PujaCategoryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? slug = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? parentCategoryId = freezed,
  }) {
    return _then(
      _$PujaCategoryEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
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
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentCategoryId: freezed == parentCategoryId
            ? _value.parentCategoryId
            : parentCategoryId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PujaCategoryEntityImpl implements _PujaCategoryEntity {
  const _$PujaCategoryEntityImpl({
    required this.id,
    required this.name,
    this.description,
    required this.slug,
    this.isActive = true,
    required this.createdAt,
    required this.updatedAt,
    this.imageUrl,
    this.parentCategoryId,
  });

  /// Unique identifier for the puja category, auto-generated using cuid
  @override
  final String id;

  /// Name of the category as displayed in the application
  @override
  final String name;

  /// Optional description explaining what pujas belong to this category
  @override
  final String? description;

  /// URL-friendly unique identifier for the category used in routing
  @override
  final String slug;

  /// Whether this category is currently active and visible
  @override
  @JsonKey()
  final bool isActive;

  /// Timestamp when the category record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the category record was last updated
  @override
  final DateTime updatedAt;

  /// Optional URL to an image representing this category
  @override
  final String? imageUrl;

  /// Optional foreign key to parent category for hierarchical organization
  @override
  final String? parentCategoryId;

  @override
  String toString() {
    return 'PujaCategoryEntity(id: $id, name: $name, description: $description, slug: $slug, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, parentCategoryId: $parentCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    slug,
    isActive,
    createdAt,
    updatedAt,
    imageUrl,
    parentCategoryId,
  );

  /// Create a copy of PujaCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaCategoryEntityImplCopyWith<_$PujaCategoryEntityImpl> get copyWith =>
      __$$PujaCategoryEntityImplCopyWithImpl<_$PujaCategoryEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PujaCategoryEntity implements PujaCategoryEntity {
  const factory _PujaCategoryEntity({
    required final String id,
    required final String name,
    final String? description,
    required final String slug,
    final bool isActive,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final String? imageUrl,
    final String? parentCategoryId,
  }) = _$PujaCategoryEntityImpl;

  /// Unique identifier for the puja category, auto-generated using cuid
  @override
  String get id;

  /// Name of the category as displayed in the application
  @override
  String get name;

  /// Optional description explaining what pujas belong to this category
  @override
  String? get description;

  /// URL-friendly unique identifier for the category used in routing
  @override
  String get slug;

  /// Whether this category is currently active and visible
  @override
  bool get isActive;

  /// Timestamp when the category record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the category record was last updated
  @override
  DateTime get updatedAt;

  /// Optional URL to an image representing this category
  @override
  String? get imageUrl;

  /// Optional foreign key to parent category for hierarchical organization
  @override
  String? get parentCategoryId;

  /// Create a copy of PujaCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaCategoryEntityImplCopyWith<_$PujaCategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
