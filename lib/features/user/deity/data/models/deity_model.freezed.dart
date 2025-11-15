// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeityModel _$DeityModelFromJson(Map<String, dynamic> json) {
  return _DeityModel.fromJson(json);
}

/// @nodoc
mixin _$DeityModel {
  /// Unique identifier for the deity
  String get id => throw _privateConstructorUsedError;

  /// Name of the deity, must be unique across all deities
  String get name => throw _privateConstructorUsedError;

  /// Optional mythological or historical story associated with the deity
  String? get story => throw _privateConstructorUsedError;

  /// Optional URL to the main image of the deity
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Optional URL to a smaller thumbnail version of the deity image
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Whether this deity is currently active and visible in the system
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the deity record was created
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the deity record was last updated
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DeityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeityModelCopyWith<DeityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeityModelCopyWith<$Res> {
  factory $DeityModelCopyWith(
    DeityModel value,
    $Res Function(DeityModel) then,
  ) = _$DeityModelCopyWithImpl<$Res, DeityModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String? story,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
    @JsonKey(name: 'isActive') bool isActive,
    @JsonKey(name: 'createdAt') DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime updatedAt,
  });
}

/// @nodoc
class _$DeityModelCopyWithImpl<$Res, $Val extends DeityModel>
    implements $DeityModelCopyWith<$Res> {
  _$DeityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeityModel
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
abstract class _$$DeityModelImplCopyWith<$Res>
    implements $DeityModelCopyWith<$Res> {
  factory _$$DeityModelImplCopyWith(
    _$DeityModelImpl value,
    $Res Function(_$DeityModelImpl) then,
  ) = __$$DeityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? story,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
    @JsonKey(name: 'isActive') bool isActive,
    @JsonKey(name: 'createdAt') DateTime createdAt,
    @JsonKey(name: 'updatedAt') DateTime updatedAt,
  });
}

/// @nodoc
class __$$DeityModelImplCopyWithImpl<$Res>
    extends _$DeityModelCopyWithImpl<$Res, _$DeityModelImpl>
    implements _$$DeityModelImplCopyWith<$Res> {
  __$$DeityModelImplCopyWithImpl(
    _$DeityModelImpl _value,
    $Res Function(_$DeityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeityModel
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
      _$DeityModelImpl(
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
@JsonSerializable()
class _$DeityModelImpl extends _DeityModel {
  const _$DeityModelImpl({
    required this.id,
    required this.name,
    this.story,
    @JsonKey(name: 'imageUrl') this.imageUrl,
    @JsonKey(name: 'thumbnailUrl') this.thumbnailUrl,
    @JsonKey(name: 'isActive') this.isActive = true,
    @JsonKey(name: 'createdAt') required this.createdAt,
    @JsonKey(name: 'updatedAt') required this.updatedAt,
  }) : super._();

  factory _$DeityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeityModelImplFromJson(json);

  /// Unique identifier for the deity
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
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  /// Optional URL to a smaller thumbnail version of the deity image
  @override
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;

  /// Whether this deity is currently active and visible in the system
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;

  /// Timestamp when the deity record was created
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  /// Timestamp when the deity record was last updated
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'DeityModel(id: $id, name: $name, story: $story, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeityModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DeityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeityModelImplCopyWith<_$DeityModelImpl> get copyWith =>
      __$$DeityModelImplCopyWithImpl<_$DeityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeityModelImplToJson(this);
  }
}

abstract class _DeityModel extends DeityModel {
  const factory _DeityModel({
    required final String id,
    required final String name,
    final String? story,
    @JsonKey(name: 'imageUrl') final String? imageUrl,
    @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
    @JsonKey(name: 'isActive') final bool isActive,
    @JsonKey(name: 'createdAt') required final DateTime createdAt,
    @JsonKey(name: 'updatedAt') required final DateTime updatedAt,
  }) = _$DeityModelImpl;
  const _DeityModel._() : super._();

  factory _DeityModel.fromJson(Map<String, dynamic> json) =
      _$DeityModelImpl.fromJson;

  /// Unique identifier for the deity
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
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;

  /// Optional URL to a smaller thumbnail version of the deity image
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;

  /// Whether this deity is currently active and visible in the system
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;

  /// Timestamp when the deity record was created
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;

  /// Timestamp when the deity record was last updated
  @override
  @JsonKey(name: 'updatedAt')
  DateTime get updatedAt;

  /// Create a copy of DeityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeityModelImplCopyWith<_$DeityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
