// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puja_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PujaPackageEntity {
  /// Unique identifier for the puja package, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Name of the puja package as it appears in the catalog
  String get name => throw _privateConstructorUsedError;

  /// Optional display title for the package, may differ from the name
  String? get title => throw _privateConstructorUsedError;

  /// Optional detailed description of what is included in this puja package
  String? get description => throw _privateConstructorUsedError;

  /// Price of the package in paise (smallest currency unit)
  int get price => throw _privateConstructorUsedError;

  /// Whether this package is currently available for purchase
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the package record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the package record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional URL to an image representing this puja package
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Array of benefit descriptions highlighting advantages of this package
  List<String> get benefits => throw _privateConstructorUsedError;

  /// Create a copy of PujaPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PujaPackageEntityCopyWith<PujaPackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PujaPackageEntityCopyWith<$Res> {
  factory $PujaPackageEntityCopyWith(
    PujaPackageEntity value,
    $Res Function(PujaPackageEntity) then,
  ) = _$PujaPackageEntityCopyWithImpl<$Res, PujaPackageEntity>;
  @useResult
  $Res call({
    String id,
    String name,
    String? title,
    String? description,
    int price,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    List<String> benefits,
  });
}

/// @nodoc
class _$PujaPackageEntityCopyWithImpl<$Res, $Val extends PujaPackageEntity>
    implements $PujaPackageEntityCopyWith<$Res> {
  _$PujaPackageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PujaPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? benefits = null,
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
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
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
            benefits: null == benefits
                ? _value.benefits
                : benefits // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PujaPackageEntityImplCopyWith<$Res>
    implements $PujaPackageEntityCopyWith<$Res> {
  factory _$$PujaPackageEntityImplCopyWith(
    _$PujaPackageEntityImpl value,
    $Res Function(_$PujaPackageEntityImpl) then,
  ) = __$$PujaPackageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? title,
    String? description,
    int price,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    List<String> benefits,
  });
}

/// @nodoc
class __$$PujaPackageEntityImplCopyWithImpl<$Res>
    extends _$PujaPackageEntityCopyWithImpl<$Res, _$PujaPackageEntityImpl>
    implements _$$PujaPackageEntityImplCopyWith<$Res> {
  __$$PujaPackageEntityImplCopyWithImpl(
    _$PujaPackageEntityImpl _value,
    $Res Function(_$PujaPackageEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PujaPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? benefits = null,
  }) {
    return _then(
      _$PujaPackageEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
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
        benefits: null == benefits
            ? _value._benefits
            : benefits // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$PujaPackageEntityImpl implements _PujaPackageEntity {
  const _$PujaPackageEntityImpl({
    required this.id,
    required this.name,
    this.title,
    this.description,
    this.price = 0,
    this.isActive = true,
    required this.createdAt,
    required this.updatedAt,
    this.imageUrl,
    final List<String> benefits = const [],
  }) : _benefits = benefits;

  /// Unique identifier for the puja package, auto-generated using cuid
  @override
  final String id;

  /// Name of the puja package as it appears in the catalog
  @override
  final String name;

  /// Optional display title for the package, may differ from the name
  @override
  final String? title;

  /// Optional detailed description of what is included in this puja package
  @override
  final String? description;

  /// Price of the package in paise (smallest currency unit)
  @override
  @JsonKey()
  final int price;

  /// Whether this package is currently available for purchase
  @override
  @JsonKey()
  final bool isActive;

  /// Timestamp when the package record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the package record was last updated
  @override
  final DateTime updatedAt;

  /// Optional URL to an image representing this puja package
  @override
  final String? imageUrl;

  /// Array of benefit descriptions highlighting advantages of this package
  final List<String> _benefits;

  /// Array of benefit descriptions highlighting advantages of this package
  @override
  @JsonKey()
  List<String> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  String toString() {
    return 'PujaPackageEntity(id: $id, name: $name, title: $title, description: $description, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, benefits: $benefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PujaPackageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    title,
    description,
    price,
    isActive,
    createdAt,
    updatedAt,
    imageUrl,
    const DeepCollectionEquality().hash(_benefits),
  );

  /// Create a copy of PujaPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PujaPackageEntityImplCopyWith<_$PujaPackageEntityImpl> get copyWith =>
      __$$PujaPackageEntityImplCopyWithImpl<_$PujaPackageEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PujaPackageEntity implements PujaPackageEntity {
  const factory _PujaPackageEntity({
    required final String id,
    required final String name,
    final String? title,
    final String? description,
    final int price,
    final bool isActive,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final String? imageUrl,
    final List<String> benefits,
  }) = _$PujaPackageEntityImpl;

  /// Unique identifier for the puja package, auto-generated using cuid
  @override
  String get id;

  /// Name of the puja package as it appears in the catalog
  @override
  String get name;

  /// Optional display title for the package, may differ from the name
  @override
  String? get title;

  /// Optional detailed description of what is included in this puja package
  @override
  String? get description;

  /// Price of the package in paise (smallest currency unit)
  @override
  int get price;

  /// Whether this package is currently available for purchase
  @override
  bool get isActive;

  /// Timestamp when the package record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the package record was last updated
  @override
  DateTime get updatedAt;

  /// Optional URL to an image representing this puja package
  @override
  String? get imageUrl;

  /// Array of benefit descriptions highlighting advantages of this package
  @override
  List<String> get benefits;

  /// Create a copy of PujaPackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PujaPackageEntityImplCopyWith<_$PujaPackageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
