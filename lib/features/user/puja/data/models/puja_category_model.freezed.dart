// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PujaCategoryModel _$PujaCategoryModelFromJson(Map<String, dynamic> json) {
  return _PujaCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$PujaCategoryModel {
  /// Unique identifier for the puja category
  String get id => throw _privateConstructorUsedError;

  /// Name of the category as displayed in the application
  String get name => throw _privateConstructorUsedError;

  /// Optional description explaining what pujas belong to this category
  String? get description => throw _privateConstructorUsedError;

  /// URL-friendly unique identifier for the category used in routing
  String get slug => throw _privateConstructorUsedError;

  /// Whether this category is currently active and visible
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the category record was created
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the category record was last updated
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional URL to an image representing this category
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Optional foreign key to parent category for hierarchical organization
  @JsonKey(name: 'parent_category_id')
  String? get parentCategoryId => throw _privateConstructorUsedError;

  /// Serializes this PujaCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PujaCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaCategoryModelCopyWith<PujaCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaCategoryModelCopyWith<$Res> {
  factory $PujaCategoryModelCopyWith(
    PujaCategoryModel value,
    $Res Function(PujaCategoryModel) then,
  ) = _$PujaCategoryModelCopyWithImpl<$Res, PujaCategoryModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String slug,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'parent_category_id') String? parentCategoryId,
  });
}

/// @nodoc
class _$PujaCategoryModelCopyWithImpl<$Res, $Val extends PujaCategoryModel>
    implements $PujaCategoryModelCopyWith<$Res> {
  _$PujaCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaCategoryModel
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
abstract class _$$PujaCategoryModelImplCopyWith<$Res>
    implements $PujaCategoryModelCopyWith<$Res> {
  factory _$$PujaCategoryModelImplCopyWith(
    _$PujaCategoryModelImpl value,
    $Res Function(_$PujaCategoryModelImpl) then,
  ) = __$$PujaCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String slug,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'parent_category_id') String? parentCategoryId,
  });
}

/// @nodoc
class __$$PujaCategoryModelImplCopyWithImpl<$Res>
    extends _$PujaCategoryModelCopyWithImpl<$Res, _$PujaCategoryModelImpl>
    implements _$$PujaCategoryModelImplCopyWith<$Res> {
  __$$PujaCategoryModelImplCopyWithImpl(
    _$PujaCategoryModelImpl _value,
    $Res Function(_$PujaCategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaCategoryModel
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
      _$PujaCategoryModelImpl(
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
@JsonSerializable()
class _$PujaCategoryModelImpl extends _PujaCategoryModel {
  const _$PujaCategoryModelImpl({
    required this.id,
    required this.name,
    this.description,
    required this.slug,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'parent_category_id') this.parentCategoryId,
  }) : super._();

  factory _$PujaCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PujaCategoryModelImplFromJson(json);

  /// Unique identifier for the puja category
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
  @JsonKey(name: 'is_active')
  final bool isActive;

  /// Timestamp when the category record was created
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Timestamp when the category record was last updated
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Optional URL to an image representing this category
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  /// Optional foreign key to parent category for hierarchical organization
  @override
  @JsonKey(name: 'parent_category_id')
  final String? parentCategoryId;

  @override
  String toString() {
    return 'PujaCategoryModel(id: $id, name: $name, description: $description, slug: $slug, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, parentCategoryId: $parentCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaCategoryModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PujaCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaCategoryModelImplCopyWith<_$PujaCategoryModelImpl> get copyWith =>
      __$$PujaCategoryModelImplCopyWithImpl<_$PujaCategoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PujaCategoryModelImplToJson(this);
  }
}

abstract class _PujaCategoryModel extends PujaCategoryModel {
  const factory _PujaCategoryModel({
    required final String id,
    required final String name,
    final String? description,
    required final String slug,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'parent_category_id') final String? parentCategoryId,
  }) = _$PujaCategoryModelImpl;
  const _PujaCategoryModel._() : super._();

  factory _PujaCategoryModel.fromJson(Map<String, dynamic> json) =
      _$PujaCategoryModelImpl.fromJson;

  /// Unique identifier for the puja category
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
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Timestamp when the category record was created
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Timestamp when the category record was last updated
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Optional URL to an image representing this category
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Optional foreign key to parent category for hierarchical organization
  @override
  @JsonKey(name: 'parent_category_id')
  String? get parentCategoryId;

  /// Create a copy of PujaCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaCategoryModelImplCopyWith<_$PujaCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
