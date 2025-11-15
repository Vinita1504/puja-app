// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadhava_offering_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChadhavaOfferingModel _$ChadhavaOfferingModelFromJson(
  Map<String, dynamic> json,
) {
  return _ChadhavaOfferingModel.fromJson(json);
}

/// @nodoc
mixin _$ChadhavaOfferingModel {
  /// Unique identifier for the chadhava offering
  String get id => throw _privateConstructorUsedError;

  /// Title or name of the offering package
  String get title => throw _privateConstructorUsedError;

  /// Detailed description of what is included in this offering package
  String get description => throw _privateConstructorUsedError;

  /// Price of the offering in paise (smallest currency unit)
  int get price => throw _privateConstructorUsedError;

  /// Whether this offering is currently available for purchase
  bool get isActive => throw _privateConstructorUsedError;

  /// Timestamp when the offering record was created
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the offering record was last updated
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Optional URL to an image representing this offering package
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Array of chadhava models associated with this offering
  @JsonKey(name: 'chadhavas')
  List<ChadhavaModel>? get chadhavas => throw _privateConstructorUsedError;

  /// Array of puja models associated with this offering
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas => throw _privateConstructorUsedError;

  /// Array of deity models associated with this offering
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities => throw _privateConstructorUsedError;

  /// Serializes this ChadhavaOfferingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChadhavaOfferingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChadhavaOfferingModelCopyWith<ChadhavaOfferingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChadhavaOfferingModelCopyWith<$Res> {
  factory $ChadhavaOfferingModelCopyWith(
    ChadhavaOfferingModel value,
    $Res Function(ChadhavaOfferingModel) then,
  ) = _$ChadhavaOfferingModelCopyWithImpl<$Res, ChadhavaOfferingModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    int price,
    bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'chadhavas') List<ChadhavaModel>? chadhavas,
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,
    @JsonKey(name: 'deities') List<DeityModel>? deities,
  });
}

/// @nodoc
class _$ChadhavaOfferingModelCopyWithImpl<
  $Res,
  $Val extends ChadhavaOfferingModel
>
    implements $ChadhavaOfferingModelCopyWith<$Res> {
  _$ChadhavaOfferingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChadhavaOfferingModel
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
                      as List<ChadhavaModel>?,
            pujas: freezed == pujas
                ? _value.pujas
                : pujas // ignore: cast_nullable_to_non_nullable
                      as List<PujaModel>?,
            deities: freezed == deities
                ? _value.deities
                : deities // ignore: cast_nullable_to_non_nullable
                      as List<DeityModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChadhavaOfferingModelImplCopyWith<$Res>
    implements $ChadhavaOfferingModelCopyWith<$Res> {
  factory _$$ChadhavaOfferingModelImplCopyWith(
    _$ChadhavaOfferingModelImpl value,
    $Res Function(_$ChadhavaOfferingModelImpl) then,
  ) = __$$ChadhavaOfferingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    int price,
    bool isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'chadhavas') List<ChadhavaModel>? chadhavas,
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,
    @JsonKey(name: 'deities') List<DeityModel>? deities,
  });
}

/// @nodoc
class __$$ChadhavaOfferingModelImplCopyWithImpl<$Res>
    extends
        _$ChadhavaOfferingModelCopyWithImpl<$Res, _$ChadhavaOfferingModelImpl>
    implements _$$ChadhavaOfferingModelImplCopyWith<$Res> {
  __$$ChadhavaOfferingModelImplCopyWithImpl(
    _$ChadhavaOfferingModelImpl _value,
    $Res Function(_$ChadhavaOfferingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChadhavaOfferingModel
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
      _$ChadhavaOfferingModelImpl(
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
                  as List<ChadhavaModel>?,
        pujas: freezed == pujas
            ? _value._pujas
            : pujas // ignore: cast_nullable_to_non_nullable
                  as List<PujaModel>?,
        deities: freezed == deities
            ? _value._deities
            : deities // ignore: cast_nullable_to_non_nullable
                  as List<DeityModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChadhavaOfferingModelImpl extends _ChadhavaOfferingModel {
  const _$ChadhavaOfferingModelImpl({
    required this.id,
    required this.title,
    required this.description,
    this.price = 0,
    this.isActive = true,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'chadhavas') final List<ChadhavaModel>? chadhavas,
    @JsonKey(name: 'pujas') final List<PujaModel>? pujas,
    @JsonKey(name: 'deities') final List<DeityModel>? deities,
  }) : _chadhavas = chadhavas,
       _pujas = pujas,
       _deities = deities,
       super._();

  factory _$ChadhavaOfferingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChadhavaOfferingModelImplFromJson(json);

  /// Unique identifier for the chadhava offering
  @override
  final String id;

  /// Title or name of the offering package
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
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Timestamp when the offering record was last updated
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Optional URL to an image representing this offering package
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  /// Array of chadhava models associated with this offering
  final List<ChadhavaModel>? _chadhavas;

  /// Array of chadhava models associated with this offering
  @override
  @JsonKey(name: 'chadhavas')
  List<ChadhavaModel>? get chadhavas {
    final value = _chadhavas;
    if (value == null) return null;
    if (_chadhavas is EqualUnmodifiableListView) return _chadhavas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of puja models associated with this offering
  final List<PujaModel>? _pujas;

  /// Array of puja models associated with this offering
  @override
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas {
    final value = _pujas;
    if (value == null) return null;
    if (_pujas is EqualUnmodifiableListView) return _pujas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of deity models associated with this offering
  final List<DeityModel>? _deities;

  /// Array of deity models associated with this offering
  @override
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities {
    final value = _deities;
    if (value == null) return null;
    if (_deities is EqualUnmodifiableListView) return _deities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChadhavaOfferingModel(id: $id, title: $title, description: $description, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, chadhavas: $chadhavas, pujas: $pujas, deities: $deities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChadhavaOfferingModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ChadhavaOfferingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChadhavaOfferingModelImplCopyWith<_$ChadhavaOfferingModelImpl>
  get copyWith =>
      __$$ChadhavaOfferingModelImplCopyWithImpl<_$ChadhavaOfferingModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChadhavaOfferingModelImplToJson(this);
  }
}

abstract class _ChadhavaOfferingModel extends ChadhavaOfferingModel {
  const factory _ChadhavaOfferingModel({
    required final String id,
    required final String title,
    required final String description,
    final int price,
    final bool isActive,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'chadhavas') final List<ChadhavaModel>? chadhavas,
    @JsonKey(name: 'pujas') final List<PujaModel>? pujas,
    @JsonKey(name: 'deities') final List<DeityModel>? deities,
  }) = _$ChadhavaOfferingModelImpl;
  const _ChadhavaOfferingModel._() : super._();

  factory _ChadhavaOfferingModel.fromJson(Map<String, dynamic> json) =
      _$ChadhavaOfferingModelImpl.fromJson;

  /// Unique identifier for the chadhava offering
  @override
  String get id;

  /// Title or name of the offering package
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
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Timestamp when the offering record was last updated
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Optional URL to an image representing this offering package
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Array of chadhava models associated with this offering
  @override
  @JsonKey(name: 'chadhavas')
  List<ChadhavaModel>? get chadhavas;

  /// Array of puja models associated with this offering
  @override
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas;

  /// Array of deity models associated with this offering
  @override
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities;

  /// Create a copy of ChadhavaOfferingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChadhavaOfferingModelImplCopyWith<_$ChadhavaOfferingModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
