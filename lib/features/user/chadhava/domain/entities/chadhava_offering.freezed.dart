// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadhava_offering.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChadhavaOfferingEntity {
  /// Unique identifier for the chadhava offering, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Title or name of the offering package available for the chadhava
  String get title => throw _privateConstructorUsedError;

  /// Detailed description of what is included in this offering package
  String get description => throw _privateConstructorUsedError;

  /// Price of the offering in paise (smallest currency unit)
  int get price => throw _privateConstructorUsedError;

  /// Whether this offering is currently available for purchase
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the offering record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the offering record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional URL to an image representing this offering package
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Array of chadhava entities associated with this offering
  List<ChadhavaEntity>? get chadhavas => throw _privateConstructorUsedError;

  /// Array of puja entities associated with this offering
  List<PujaEntity>? get pujas => throw _privateConstructorUsedError;

  /// Array of deity entities associated with this offering
  List<DeityEntity>? get deities => throw _privateConstructorUsedError;

  /// Create a copy of ChadhavaOfferingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChadhavaOfferingEntityCopyWith<ChadhavaOfferingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChadhavaOfferingEntityCopyWith<$Res> {
  factory $ChadhavaOfferingEntityCopyWith(
    ChadhavaOfferingEntity value,
    $Res Function(ChadhavaOfferingEntity) then,
  ) = _$ChadhavaOfferingEntityCopyWithImpl<$Res, ChadhavaOfferingEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    int price,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    List<ChadhavaEntity>? chadhavas,
    List<PujaEntity>? pujas,
    List<DeityEntity>? deities,
  });
}

/// @nodoc
class _$ChadhavaOfferingEntityCopyWithImpl<
  $Res,
  $Val extends ChadhavaOfferingEntity
>
    implements $ChadhavaOfferingEntityCopyWith<$Res> {
  _$ChadhavaOfferingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChadhavaOfferingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? chadhavas = freezed,
    Object? pujas = freezed,
    Object? deities = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
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
            chadhavas: freezed == chadhavas
                ? _value.chadhavas
                : chadhavas // ignore: cast_nullable_to_non_nullable
                      as List<ChadhavaEntity>?,
            pujas: freezed == pujas
                ? _value.pujas
                : pujas // ignore: cast_nullable_to_non_nullable
                      as List<PujaEntity>?,
            deities: freezed == deities
                ? _value.deities
                : deities // ignore: cast_nullable_to_non_nullable
                      as List<DeityEntity>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChadhavaOfferingEntityImplCopyWith<$Res>
    implements $ChadhavaOfferingEntityCopyWith<$Res> {
  factory _$$ChadhavaOfferingEntityImplCopyWith(
    _$ChadhavaOfferingEntityImpl value,
    $Res Function(_$ChadhavaOfferingEntityImpl) then,
  ) = __$$ChadhavaOfferingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    int price,
    bool isActive,
    DateTime createdAt,
    DateTime updatedAt,
    String? imageUrl,
    List<ChadhavaEntity>? chadhavas,
    List<PujaEntity>? pujas,
    List<DeityEntity>? deities,
  });
}

/// @nodoc
class __$$ChadhavaOfferingEntityImplCopyWithImpl<$Res>
    extends
        _$ChadhavaOfferingEntityCopyWithImpl<$Res, _$ChadhavaOfferingEntityImpl>
    implements _$$ChadhavaOfferingEntityImplCopyWith<$Res> {
  __$$ChadhavaOfferingEntityImplCopyWithImpl(
    _$ChadhavaOfferingEntityImpl _value,
    $Res Function(_$ChadhavaOfferingEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChadhavaOfferingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? chadhavas = freezed,
    Object? pujas = freezed,
    Object? deities = freezed,
  }) {
    return _then(
      _$ChadhavaOfferingEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
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
        chadhavas: freezed == chadhavas
            ? _value._chadhavas
            : chadhavas // ignore: cast_nullable_to_non_nullable
                  as List<ChadhavaEntity>?,
        pujas: freezed == pujas
            ? _value._pujas
            : pujas // ignore: cast_nullable_to_non_nullable
                  as List<PujaEntity>?,
        deities: freezed == deities
            ? _value._deities
            : deities // ignore: cast_nullable_to_non_nullable
                  as List<DeityEntity>?,
      ),
    );
  }
}

/// @nodoc

class _$ChadhavaOfferingEntityImpl implements _ChadhavaOfferingEntity {
  const _$ChadhavaOfferingEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    this.price = 0,
    this.isActive = true,
    required this.createdAt,
    required this.updatedAt,
    this.imageUrl,
    final List<ChadhavaEntity>? chadhavas,
    final List<PujaEntity>? pujas,
    final List<DeityEntity>? deities,
  }) : _chadhavas = chadhavas,
       _pujas = pujas,
       _deities = deities;

  /// Unique identifier for the chadhava offering, auto-generated using cuid
  @override
  final String id;

  /// Title or name of the offering package available for the chadhava
  @override
  final String title;

  /// Detailed description of what is included in this offering package
  @override
  final String description;

  /// Price of the offering in paise (smallest currency unit)
  @override
  @JsonKey()
  final int price;

  /// Whether this offering is currently available for purchase
  @override
  @JsonKey()
  final bool isActive;

  /// Timestamp when the offering record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the offering record was last updated
  @override
  final DateTime updatedAt;

  /// Optional URL to an image representing this offering package
  @override
  final String? imageUrl;

  /// Array of chadhava entities associated with this offering
  final List<ChadhavaEntity>? _chadhavas;

  /// Array of chadhava entities associated with this offering
  @override
  List<ChadhavaEntity>? get chadhavas {
    final value = _chadhavas;
    if (value == null) return null;
    if (_chadhavas is EqualUnmodifiableListView) return _chadhavas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of puja entities associated with this offering
  final List<PujaEntity>? _pujas;

  /// Array of puja entities associated with this offering
  @override
  List<PujaEntity>? get pujas {
    final value = _pujas;
    if (value == null) return null;
    if (_pujas is EqualUnmodifiableListView) return _pujas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of deity entities associated with this offering
  final List<DeityEntity>? _deities;

  /// Array of deity entities associated with this offering
  @override
  List<DeityEntity>? get deities {
    final value = _deities;
    if (value == null) return null;
    if (_deities is EqualUnmodifiableListView) return _deities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChadhavaOfferingEntity(id: $id, title: $title, description: $description, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, chadhavas: $chadhavas, pujas: $pujas, deities: $deities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChadhavaOfferingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            const DeepCollectionEquality().equals(
              other._chadhavas,
              _chadhavas,
            ) &&
            const DeepCollectionEquality().equals(other._pujas, _pujas) &&
            const DeepCollectionEquality().equals(other._deities, _deities));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    price,
    isActive,
    createdAt,
    updatedAt,
    imageUrl,
    const DeepCollectionEquality().hash(_chadhavas),
    const DeepCollectionEquality().hash(_pujas),
    const DeepCollectionEquality().hash(_deities),
  );

  /// Create a copy of ChadhavaOfferingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChadhavaOfferingEntityImplCopyWith<_$ChadhavaOfferingEntityImpl>
  get copyWith =>
      __$$ChadhavaOfferingEntityImplCopyWithImpl<_$ChadhavaOfferingEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ChadhavaOfferingEntity implements ChadhavaOfferingEntity {
  const factory _ChadhavaOfferingEntity({
    required final String id,
    required final String title,
    required final String description,
    final int price,
    final bool isActive,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final String? imageUrl,
    final List<ChadhavaEntity>? chadhavas,
    final List<PujaEntity>? pujas,
    final List<DeityEntity>? deities,
  }) = _$ChadhavaOfferingEntityImpl;

  /// Unique identifier for the chadhava offering, auto-generated using cuid
  @override
  String get id;

  /// Title or name of the offering package available for the chadhava
  @override
  String get title;

  /// Detailed description of what is included in this offering package
  @override
  String get description;

  /// Price of the offering in paise (smallest currency unit)
  @override
  int get price;

  /// Whether this offering is currently available for purchase
  @override
  bool get isActive;

  /// Timestamp when the offering record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the offering record was last updated
  @override
  DateTime get updatedAt;

  /// Optional URL to an image representing this offering package
  @override
  String? get imageUrl;

  /// Array of chadhava entities associated with this offering
  @override
  List<ChadhavaEntity>? get chadhavas;

  /// Array of puja entities associated with this offering
  @override
  List<PujaEntity>? get pujas;

  /// Array of deity entities associated with this offering
  @override
  List<DeityEntity>? get deities;

  /// Create a copy of ChadhavaOfferingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChadhavaOfferingEntityImplCopyWith<_$ChadhavaOfferingEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
