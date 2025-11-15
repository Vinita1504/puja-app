// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadhava.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChadhavaEntity {
  /// Unique identifier for the chadhava event, auto-generated using cuid
  String get id => throw _privateConstructorUsedError;

  /// Title or name of the chadhava event or festival
  String get title => throw _privateConstructorUsedError;

  /// Detailed description of the chadhava event, its significance and activities
  String get description => throw _privateConstructorUsedError;

  /// Whether this chadhava is currently active and visible to users
  bool get isActive => throw _privateConstructorUsedError;

  /// Array of image URLs showcasing the chadhava event or related visuals
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Optional start date and time when the chadhava event begins
  DateTime? get startDatetime => throw _privateConstructorUsedError;

  /// Optional end date and time when the chadhava event concludes
  DateTime? get endDatetime => throw _privateConstructorUsedError;

  /// Timestamp when the chadhava record was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the chadhava record was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Array of puja entities associated with this chadhava
  List<PujaEntity>? get pujas => throw _privateConstructorUsedError;

  /// Array of deity entities associated with this chadhava
  List<DeityEntity>? get deities => throw _privateConstructorUsedError;

  /// Array of temple entities associated with this chadhava
  List<TempleEntity>? get temples => throw _privateConstructorUsedError;

  /// Array of chadhava offering entities associated with this chadhava
  List<ChadhavaOfferingEntity>? get chadhavaOfferings =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChadhavaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChadhavaEntityCopyWith<ChadhavaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChadhavaEntityCopyWith<$Res> {
  factory $ChadhavaEntityCopyWith(
    ChadhavaEntity value,
    $Res Function(ChadhavaEntity) then,
  ) = _$ChadhavaEntityCopyWithImpl<$Res, ChadhavaEntity>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    bool isActive,
    List<String> imageUrls,
    DateTime? startDatetime,
    DateTime? endDatetime,
    DateTime createdAt,
    DateTime updatedAt,
    List<PujaEntity>? pujas,
    List<DeityEntity>? deities,
    List<TempleEntity>? temples,
    List<ChadhavaOfferingEntity>? chadhavaOfferings,
  });
}

/// @nodoc
class _$ChadhavaEntityCopyWithImpl<$Res, $Val extends ChadhavaEntity>
    implements $ChadhavaEntityCopyWith<$Res> {
  _$ChadhavaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChadhavaEntity
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
                      as List<PujaEntity>?,
            deities: freezed == deities
                ? _value.deities
                : deities // ignore: cast_nullable_to_non_nullable
                      as List<DeityEntity>?,
            temples: freezed == temples
                ? _value.temples
                : temples // ignore: cast_nullable_to_non_nullable
                      as List<TempleEntity>?,
            chadhavaOfferings: freezed == chadhavaOfferings
                ? _value.chadhavaOfferings
                : chadhavaOfferings // ignore: cast_nullable_to_non_nullable
                      as List<ChadhavaOfferingEntity>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChadhavaEntityImplCopyWith<$Res>
    implements $ChadhavaEntityCopyWith<$Res> {
  factory _$$ChadhavaEntityImplCopyWith(
    _$ChadhavaEntityImpl value,
    $Res Function(_$ChadhavaEntityImpl) then,
  ) = __$$ChadhavaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    bool isActive,
    List<String> imageUrls,
    DateTime? startDatetime,
    DateTime? endDatetime,
    DateTime createdAt,
    DateTime updatedAt,
    List<PujaEntity>? pujas,
    List<DeityEntity>? deities,
    List<TempleEntity>? temples,
    List<ChadhavaOfferingEntity>? chadhavaOfferings,
  });
}

/// @nodoc
class __$$ChadhavaEntityImplCopyWithImpl<$Res>
    extends _$ChadhavaEntityCopyWithImpl<$Res, _$ChadhavaEntityImpl>
    implements _$$ChadhavaEntityImplCopyWith<$Res> {
  __$$ChadhavaEntityImplCopyWithImpl(
    _$ChadhavaEntityImpl _value,
    $Res Function(_$ChadhavaEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChadhavaEntity
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
      _$ChadhavaEntityImpl(
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
                  as List<PujaEntity>?,
        deities: freezed == deities
            ? _value._deities
            : deities // ignore: cast_nullable_to_non_nullable
                  as List<DeityEntity>?,
        temples: freezed == temples
            ? _value._temples
            : temples // ignore: cast_nullable_to_non_nullable
                  as List<TempleEntity>?,
        chadhavaOfferings: freezed == chadhavaOfferings
            ? _value._chadhavaOfferings
            : chadhavaOfferings // ignore: cast_nullable_to_non_nullable
                  as List<ChadhavaOfferingEntity>?,
      ),
    );
  }
}

/// @nodoc

class _$ChadhavaEntityImpl implements _ChadhavaEntity {
  const _$ChadhavaEntityImpl({
    required this.id,
    required this.title,
    required this.description,
    this.isActive = true,
    final List<String> imageUrls = const [],
    this.startDatetime,
    this.endDatetime,
    required this.createdAt,
    required this.updatedAt,
    final List<PujaEntity>? pujas,
    final List<DeityEntity>? deities,
    final List<TempleEntity>? temples,
    final List<ChadhavaOfferingEntity>? chadhavaOfferings,
  }) : _imageUrls = imageUrls,
       _pujas = pujas,
       _deities = deities,
       _temples = temples,
       _chadhavaOfferings = chadhavaOfferings;

  /// Unique identifier for the chadhava event, auto-generated using cuid
  @override
  final String id;

  /// Title or name of the chadhava event or festival
  @override
  final String title;

  /// Detailed description of the chadhava event, its significance and activities
  @override
  final String description;

  /// Whether this chadhava is currently active and visible to users
  @override
  @JsonKey()
  final bool isActive;

  /// Array of image URLs showcasing the chadhava event or related visuals
  final List<String> _imageUrls;

  /// Array of image URLs showcasing the chadhava event or related visuals
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  /// Optional start date and time when the chadhava event begins
  @override
  final DateTime? startDatetime;

  /// Optional end date and time when the chadhava event concludes
  @override
  final DateTime? endDatetime;

  /// Timestamp when the chadhava record was created
  @override
  final DateTime createdAt;

  /// Timestamp when the chadhava record was last updated
  @override
  final DateTime updatedAt;

  /// Array of puja entities associated with this chadhava
  final List<PujaEntity>? _pujas;

  /// Array of puja entities associated with this chadhava
  @override
  List<PujaEntity>? get pujas {
    final value = _pujas;
    if (value == null) return null;
    if (_pujas is EqualUnmodifiableListView) return _pujas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of deity entities associated with this chadhava
  final List<DeityEntity>? _deities;

  /// Array of deity entities associated with this chadhava
  @override
  List<DeityEntity>? get deities {
    final value = _deities;
    if (value == null) return null;
    if (_deities is EqualUnmodifiableListView) return _deities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of temple entities associated with this chadhava
  final List<TempleEntity>? _temples;

  /// Array of temple entities associated with this chadhava
  @override
  List<TempleEntity>? get temples {
    final value = _temples;
    if (value == null) return null;
    if (_temples is EqualUnmodifiableListView) return _temples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Array of chadhava offering entities associated with this chadhava
  final List<ChadhavaOfferingEntity>? _chadhavaOfferings;

  /// Array of chadhava offering entities associated with this chadhava
  @override
  List<ChadhavaOfferingEntity>? get chadhavaOfferings {
    final value = _chadhavaOfferings;
    if (value == null) return null;
    if (_chadhavaOfferings is EqualUnmodifiableListView)
      return _chadhavaOfferings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChadhavaEntity(id: $id, title: $title, description: $description, isActive: $isActive, imageUrls: $imageUrls, startDatetime: $startDatetime, endDatetime: $endDatetime, createdAt: $createdAt, updatedAt: $updatedAt, pujas: $pujas, deities: $deities, temples: $temples, chadhavaOfferings: $chadhavaOfferings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChadhavaEntityImpl &&
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

  /// Create a copy of ChadhavaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChadhavaEntityImplCopyWith<_$ChadhavaEntityImpl> get copyWith =>
      __$$ChadhavaEntityImplCopyWithImpl<_$ChadhavaEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ChadhavaEntity implements ChadhavaEntity {
  const factory _ChadhavaEntity({
    required final String id,
    required final String title,
    required final String description,
    final bool isActive,
    final List<String> imageUrls,
    final DateTime? startDatetime,
    final DateTime? endDatetime,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final List<PujaEntity>? pujas,
    final List<DeityEntity>? deities,
    final List<TempleEntity>? temples,
    final List<ChadhavaOfferingEntity>? chadhavaOfferings,
  }) = _$ChadhavaEntityImpl;

  /// Unique identifier for the chadhava event, auto-generated using cuid
  @override
  String get id;

  /// Title or name of the chadhava event or festival
  @override
  String get title;

  /// Detailed description of the chadhava event, its significance and activities
  @override
  String get description;

  /// Whether this chadhava is currently active and visible to users
  @override
  bool get isActive;

  /// Array of image URLs showcasing the chadhava event or related visuals
  @override
  List<String> get imageUrls;

  /// Optional start date and time when the chadhava event begins
  @override
  DateTime? get startDatetime;

  /// Optional end date and time when the chadhava event concludes
  @override
  DateTime? get endDatetime;

  /// Timestamp when the chadhava record was created
  @override
  DateTime get createdAt;

  /// Timestamp when the chadhava record was last updated
  @override
  DateTime get updatedAt;

  /// Array of puja entities associated with this chadhava
  @override
  List<PujaEntity>? get pujas;

  /// Array of deity entities associated with this chadhava
  @override
  List<DeityEntity>? get deities;

  /// Array of temple entities associated with this chadhava
  @override
  List<TempleEntity>? get temples;

  /// Array of chadhava offering entities associated with this chadhava
  @override
  List<ChadhavaOfferingEntity>? get chadhavaOfferings;

  /// Create a copy of ChadhavaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChadhavaEntityImplCopyWith<_$ChadhavaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
