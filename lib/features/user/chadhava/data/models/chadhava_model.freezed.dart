// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadhava_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChadhavaModel _$ChadhavaModelFromJson(Map<String, dynamic> json) {
  return _ChadhavaModel.fromJson(json);
}

/// @nodoc
mixin _$ChadhavaModel {
  /// Unique identifier for the chadhava event
  String get id => throw _privateConstructorUsedError;

  /// Title or name of the chadhava event or festival
  String get title => throw _privateConstructorUsedError;

  /// Detailed description of the chadhava event
  String get description => throw _privateConstructorUsedError;

  /// Whether this chadhava is currently active
  bool get isActive => throw _privateConstructorUsedError;

  /// Array of image URLs showcasing the chadhava event
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Optional start date and time when the chadhava event begins
  @JsonKey(name: 'start_datetime')
  DateTime? get startDatetime => throw _privateConstructorUsedError;

  /// Optional end date and time when the chadhava event concludes
  @JsonKey(name: 'end_datetime')
  DateTime? get endDatetime => throw _privateConstructorUsedError;

  /// Timestamp when the chadhava record was created
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the chadhava record was last updated
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Array of puja models associated with this chadhava
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas => throw _privateConstructorUsedError;

  /// Array of deity models associated with this chadhava
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities => throw _privateConstructorUsedError;

  /// Array of temple models associated with this chadhava
  @JsonKey(name: 'temples')
  List<TempleModel>? get temples => throw _privateConstructorUsedError;

  /// Array of chadhava offering models associated with this chadhava
  @JsonKey(name: 'chadhava_offerings')
  List<ChadhavaOfferingModel>? get chadhavaOfferings =>
      throw _privateConstructorUsedError;

  /// Serializes this ChadhavaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChadhavaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChadhavaModelCopyWith<ChadhavaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChadhavaModelCopyWith<$Res> {
  factory $ChadhavaModelCopyWith(
    ChadhavaModel value,
    $Res Function(ChadhavaModel) then,
  ) = _$ChadhavaModelCopyWithImpl<$Res, ChadhavaModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    bool isActive,
    @JsonKey(name: 'image_urls') List<String> imageUrls,
    @JsonKey(name: 'start_datetime') DateTime? startDatetime,
    @JsonKey(name: 'end_datetime') DateTime? endDatetime,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,
    @JsonKey(name: 'deities') List<DeityModel>? deities,
    @JsonKey(name: 'temples') List<TempleModel>? temples,
    @JsonKey(name: 'chadhava_offerings')
    List<ChadhavaOfferingModel>? chadhavaOfferings,
  });
}

/// @nodoc
class _$ChadhavaModelCopyWithImpl<$Res, $Val extends ChadhavaModel>
    implements $ChadhavaModelCopyWith<$Res> {
  _$ChadhavaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChadhavaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isActive = null,
    Object? imageUrls = null,
    Object? startDatetime = freezed,
    Object? endDatetime = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pujas = freezed,
    Object? deities = freezed,
    Object? temples = freezed,
    Object? chadhavaOfferings = freezed,
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
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            imageUrls: null == imageUrls
                ? _value.imageUrls
                : imageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            startDatetime: freezed == startDatetime
                ? _value.startDatetime
                : startDatetime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endDatetime: freezed == endDatetime
                ? _value.endDatetime
                : endDatetime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            pujas: freezed == pujas
                ? _value.pujas
                : pujas // ignore: cast_nullable_to_non_nullable
                      as List<PujaModel>?,
            deities: freezed == deities
                ? _value.deities
                : deities // ignore: cast_nullable_to_non_nullable
                      as List<DeityModel>?,
            temples: freezed == temples
                ? _value.temples
                : temples // ignore: cast_nullable_to_non_nullable
                      as List<TempleModel>?,
            chadhavaOfferings: freezed == chadhavaOfferings
                ? _value.chadhavaOfferings
                : chadhavaOfferings // ignore: cast_nullable_to_non_nullable
                      as List<ChadhavaOfferingModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChadhavaModelImplCopyWith<$Res>
    implements $ChadhavaModelCopyWith<$Res> {
  factory _$$ChadhavaModelImplCopyWith(
    _$ChadhavaModelImpl value,
    $Res Function(_$ChadhavaModelImpl) then,
  ) = __$$ChadhavaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    bool isActive,
    @JsonKey(name: 'image_urls') List<String> imageUrls,
    @JsonKey(name: 'start_datetime') DateTime? startDatetime,
    @JsonKey(name: 'end_datetime') DateTime? endDatetime,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,
    @JsonKey(name: 'deities') List<DeityModel>? deities,
    @JsonKey(name: 'temples') List<TempleModel>? temples,
    @JsonKey(name: 'chadhava_offerings')
    List<ChadhavaOfferingModel>? chadhavaOfferings,
  });
}

/// @nodoc
class __$$ChadhavaModelImplCopyWithImpl<$Res>
    extends _$ChadhavaModelCopyWithImpl<$Res, _$ChadhavaModelImpl>
    implements _$$ChadhavaModelImplCopyWith<$Res> {
  __$$ChadhavaModelImplCopyWithImpl(
    _$ChadhavaModelImpl _value,
    $Res Function(_$ChadhavaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChadhavaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isActive = null,
    Object? imageUrls = null,
    Object? startDatetime = freezed,
    Object? endDatetime = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pujas = freezed,
    Object? deities = freezed,
    Object? temples = freezed,
    Object? chadhavaOfferings = freezed,
  }) {
    return _then(
      _$ChadhavaModelImpl(
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
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        imageUrls: null == imageUrls
            ? _value._imageUrls
            : imageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        startDatetime: freezed == startDatetime
            ? _value.startDatetime
            : startDatetime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endDatetime: freezed == endDatetime
            ? _value.endDatetime
            : endDatetime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        pujas: freezed == pujas
            ? _value._pujas
            : pujas // ignore: cast_nullable_to_non_nullable
                  as List<PujaModel>?,
        deities: freezed == deities
            ? _value._deities
            : deities // ignore: cast_nullable_to_non_nullable
                  as List<DeityModel>?,
        temples: freezed == temples
            ? _value._temples
            : temples // ignore: cast_nullable_to_non_nullable
                  as List<TempleModel>?,
        chadhavaOfferings: freezed == chadhavaOfferings
            ? _value._chadhavaOfferings
            : chadhavaOfferings // ignore: cast_nullable_to_non_nullable
                  as List<ChadhavaOfferingModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChadhavaModelImpl extends _ChadhavaModel {
  const _$ChadhavaModelImpl({
    required this.id,
    required this.title,
    required this.description,
    this.isActive = true,
    @JsonKey(name: 'image_urls') final List<String> imageUrls = const [],
    @JsonKey(name: 'start_datetime') this.startDatetime,
    @JsonKey(name: 'end_datetime') this.endDatetime,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'pujas') final List<PujaModel>? pujas,
    @JsonKey(name: 'deities') final List<DeityModel>? deities,
    @JsonKey(name: 'temples') final List<TempleModel>? temples,
    @JsonKey(name: 'chadhava_offerings')
    final List<ChadhavaOfferingModel>? chadhavaOfferings,
  }) : _imageUrls = imageUrls,
       _pujas = pujas,
       _deities = deities,
       _temples = temples,
       _chadhavaOfferings = chadhavaOfferings,
       super._();

  factory _$ChadhavaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChadhavaModelImplFromJson(json);

  /// Unique identifier for the chadhava event
  @override
  final String id;

  /// Title or name of the chadhava event or festival
  @override
  final String title;

  /// Detailed description of the chadhava event
  @override
  final String description;

  /// Whether this chadhava is currently active
  @override
  @JsonKey()
  final bool isActive;

  /// Array of image URLs showcasing the chadhava event
  final List<String> _imageUrls;

  /// Array of image URLs showcasing the chadhava event
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  /// Optional start date and time when the chadhava event begins
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime? startDatetime;

  /// Optional end date and time when the chadhava event concludes
  @override
  @JsonKey(name: 'end_datetime')
  final DateTime? endDatetime;

  /// Timestamp when the chadhava record was created
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Timestamp when the chadhava record was last updated
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Array of puja models associated with this chadhava
  final List<PujaModel>? _pujas;

  /// Array of puja models associated with this chadhava
  @override
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas {
    final value = _pujas;
    if (value == null) return null;
    if (_pujas is EqualUnmodifiableListView) return _pujas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of deity models associated with this chadhava
  final List<DeityModel>? _deities;

  /// Array of deity models associated with this chadhava
  @override
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities {
    final value = _deities;
    if (value == null) return null;
    if (_deities is EqualUnmodifiableListView) return _deities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of temple models associated with this chadhava
  final List<TempleModel>? _temples;

  /// Array of temple models associated with this chadhava
  @override
  @JsonKey(name: 'temples')
  List<TempleModel>? get temples {
    final value = _temples;
    if (value == null) return null;
    if (_temples is EqualUnmodifiableListView) return _temples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of chadhava offering models associated with this chadhava
  final List<ChadhavaOfferingModel>? _chadhavaOfferings;

  /// Array of chadhava offering models associated with this chadhava
  @override
  @JsonKey(name: 'chadhava_offerings')
  List<ChadhavaOfferingModel>? get chadhavaOfferings {
    final value = _chadhavaOfferings;
    if (value == null) return null;
    if (_chadhavaOfferings is EqualUnmodifiableListView)
      return _chadhavaOfferings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChadhavaModel(id: $id, title: $title, description: $description, isActive: $isActive, imageUrls: $imageUrls, startDatetime: $startDatetime, endDatetime: $endDatetime, createdAt: $createdAt, updatedAt: $updatedAt, pujas: $pujas, deities: $deities, temples: $temples, chadhavaOfferings: $chadhavaOfferings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChadhavaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(
              other._imageUrls,
              _imageUrls,
            ) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
            (identical(other.endDatetime, endDatetime) ||
                other.endDatetime == endDatetime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._pujas, _pujas) &&
            const DeepCollectionEquality().equals(other._deities, _deities) &&
            const DeepCollectionEquality().equals(other._temples, _temples) &&
            const DeepCollectionEquality().equals(
              other._chadhavaOfferings,
              _chadhavaOfferings,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    isActive,
    const DeepCollectionEquality().hash(_imageUrls),
    startDatetime,
    endDatetime,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_pujas),
    const DeepCollectionEquality().hash(_deities),
    const DeepCollectionEquality().hash(_temples),
    const DeepCollectionEquality().hash(_chadhavaOfferings),
  );

  /// Create a copy of ChadhavaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChadhavaModelImplCopyWith<_$ChadhavaModelImpl> get copyWith =>
      __$$ChadhavaModelImplCopyWithImpl<_$ChadhavaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChadhavaModelImplToJson(this);
  }
}

abstract class _ChadhavaModel extends ChadhavaModel {
  const factory _ChadhavaModel({
    required final String id,
    required final String title,
    required final String description,
    final bool isActive,
    @JsonKey(name: 'image_urls') final List<String> imageUrls,
    @JsonKey(name: 'start_datetime') final DateTime? startDatetime,
    @JsonKey(name: 'end_datetime') final DateTime? endDatetime,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    @JsonKey(name: 'pujas') final List<PujaModel>? pujas,
    @JsonKey(name: 'deities') final List<DeityModel>? deities,
    @JsonKey(name: 'temples') final List<TempleModel>? temples,
    @JsonKey(name: 'chadhava_offerings')
    final List<ChadhavaOfferingModel>? chadhavaOfferings,
  }) = _$ChadhavaModelImpl;
  const _ChadhavaModel._() : super._();

  factory _ChadhavaModel.fromJson(Map<String, dynamic> json) =
      _$ChadhavaModelImpl.fromJson;

  /// Unique identifier for the chadhava event
  @override
  String get id;

  /// Title or name of the chadhava event or festival
  @override
  String get title;

  /// Detailed description of the chadhava event
  @override
  String get description;

  /// Whether this chadhava is currently active
  @override
  bool get isActive;

  /// Array of image URLs showcasing the chadhava event
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;

  /// Optional start date and time when the chadhava event begins
  @override
  @JsonKey(name: 'start_datetime')
  DateTime? get startDatetime;

  /// Optional end date and time when the chadhava event concludes
  @override
  @JsonKey(name: 'end_datetime')
  DateTime? get endDatetime;

  /// Timestamp when the chadhava record was created
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Timestamp when the chadhava record was last updated
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Array of puja models associated with this chadhava
  @override
  @JsonKey(name: 'pujas')
  List<PujaModel>? get pujas;

  /// Array of deity models associated with this chadhava
  @override
  @JsonKey(name: 'deities')
  List<DeityModel>? get deities;

  /// Array of temple models associated with this chadhava
  @override
  @JsonKey(name: 'temples')
  List<TempleModel>? get temples;

  /// Array of chadhava offering models associated with this chadhava
  @override
  @JsonKey(name: 'chadhava_offerings')
  List<ChadhavaOfferingModel>? get chadhavaOfferings;

  /// Create a copy of ChadhavaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChadhavaModelImplCopyWith<_$ChadhavaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
