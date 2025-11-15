// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TempleModel _$TempleModelFromJson(Map<String, dynamic> json) {
  return _TempleModel.fromJson(json);
}

/// @nodoc
mixin _$TempleModel {
  /// Unique identifier for the temple
  String get id => throw _privateConstructorUsedError;

  /// Name of the temple as it appears in the application
  String get name => throw _privateConstructorUsedError;

  /// City where the temple is located
  String get city => throw _privateConstructorUsedError;

  /// State or province where the temple is located
  String get state => throw _privateConstructorUsedError;

  /// Country where the temple is located
  String get country => throw _privateConstructorUsedError;

  /// Optional detailed street address of the temple location
  String? get address => throw _privateConstructorUsedError;

  /// Optional general overview or introduction about the temple
  String? get overview => throw _privateConstructorUsedError;

  /// Optional historical background and significance of the temple
  String? get history => throw _privateConstructorUsedError;

  /// Optional information about the religious or cultural significance
  String? get significance => throw _privateConstructorUsedError;

  /// Optional description of the temple's architectural style and features
  String? get architecture => throw _privateConstructorUsedError;

  /// Optional text describing what offerings are available or accepted
  @JsonKey(name: 'offerings_text')
  String? get offeringsText => throw _privateConstructorUsedError;

  /// Optional latitude coordinate for mapping and location services
  double? get lat => throw _privateConstructorUsedError;

  /// Optional longitude coordinate for mapping and location services
  double? get lng => throw _privateConstructorUsedError;

  /// Timestamp when the temple record was created
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the temple record was last updated
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TempleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempleModelCopyWith<TempleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempleModelCopyWith<$Res> {
  factory $TempleModelCopyWith(
    TempleModel value,
    $Res Function(TempleModel) then,
  ) = _$TempleModelCopyWithImpl<$Res, TempleModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String city,
    String state,
    String country,
    String? address,
    String? overview,
    String? history,
    String? significance,
    String? architecture,
    @JsonKey(name: 'offerings_text') String? offeringsText,
    double? lat,
    double? lng,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$TempleModelCopyWithImpl<$Res, $Val extends TempleModel>
    implements $TempleModelCopyWith<$Res> {
  _$TempleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? address = freezed,
    Object? overview = freezed,
    Object? history = freezed,
    Object? significance = freezed,
    Object? architecture = freezed,
    Object? offeringsText = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
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
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            overview: freezed == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as String?,
            history: freezed == history
                ? _value.history
                : history // ignore: cast_nullable_to_non_nullable
                      as String?,
            significance: freezed == significance
                ? _value.significance
                : significance // ignore: cast_nullable_to_non_nullable
                      as String?,
            architecture: freezed == architecture
                ? _value.architecture
                : architecture // ignore: cast_nullable_to_non_nullable
                      as String?,
            offeringsText: freezed == offeringsText
                ? _value.offeringsText
                : offeringsText // ignore: cast_nullable_to_non_nullable
                      as String?,
            lat: freezed == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double?,
            lng: freezed == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double?,
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
abstract class _$$TempleModelImplCopyWith<$Res>
    implements $TempleModelCopyWith<$Res> {
  factory _$$TempleModelImplCopyWith(
    _$TempleModelImpl value,
    $Res Function(_$TempleModelImpl) then,
  ) = __$$TempleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String city,
    String state,
    String country,
    String? address,
    String? overview,
    String? history,
    String? significance,
    String? architecture,
    @JsonKey(name: 'offerings_text') String? offeringsText,
    double? lat,
    double? lng,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$TempleModelImplCopyWithImpl<$Res>
    extends _$TempleModelCopyWithImpl<$Res, _$TempleModelImpl>
    implements _$$TempleModelImplCopyWith<$Res> {
  __$$TempleModelImplCopyWithImpl(
    _$TempleModelImpl _value,
    $Res Function(_$TempleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? address = freezed,
    Object? overview = freezed,
    Object? history = freezed,
    Object? significance = freezed,
    Object? architecture = freezed,
    Object? offeringsText = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TempleModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        overview: freezed == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as String?,
        history: freezed == history
            ? _value.history
            : history // ignore: cast_nullable_to_non_nullable
                  as String?,
        significance: freezed == significance
            ? _value.significance
            : significance // ignore: cast_nullable_to_non_nullable
                  as String?,
        architecture: freezed == architecture
            ? _value.architecture
            : architecture // ignore: cast_nullable_to_non_nullable
                  as String?,
        offeringsText: freezed == offeringsText
            ? _value.offeringsText
            : offeringsText // ignore: cast_nullable_to_non_nullable
                  as String?,
        lat: freezed == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double?,
        lng: freezed == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double?,
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
class _$TempleModelImpl extends _TempleModel {
  const _$TempleModelImpl({
    required this.id,
    required this.name,
    required this.city,
    required this.state,
    required this.country,
    this.address,
    this.overview,
    this.history,
    this.significance,
    this.architecture,
    @JsonKey(name: 'offerings_text') this.offeringsText,
    this.lat,
    this.lng,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  }) : super._();

  factory _$TempleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempleModelImplFromJson(json);

  /// Unique identifier for the temple
  @override
  final String id;

  /// Name of the temple as it appears in the application
  @override
  final String name;

  /// City where the temple is located
  @override
  final String city;

  /// State or province where the temple is located
  @override
  final String state;

  /// Country where the temple is located
  @override
  final String country;

  /// Optional detailed street address of the temple location
  @override
  final String? address;

  /// Optional general overview or introduction about the temple
  @override
  final String? overview;

  /// Optional historical background and significance of the temple
  @override
  final String? history;

  /// Optional information about the religious or cultural significance
  @override
  final String? significance;

  /// Optional description of the temple's architectural style and features
  @override
  final String? architecture;

  /// Optional text describing what offerings are available or accepted
  @override
  @JsonKey(name: 'offerings_text')
  final String? offeringsText;

  /// Optional latitude coordinate for mapping and location services
  @override
  final double? lat;

  /// Optional longitude coordinate for mapping and location services
  @override
  final double? lng;

  /// Timestamp when the temple record was created
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Timestamp when the temple record was last updated
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TempleModel(id: $id, name: $name, city: $city, state: $state, country: $country, address: $address, overview: $overview, history: $history, significance: $significance, architecture: $architecture, offeringsText: $offeringsText, lat: $lat, lng: $lng, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.significance, significance) ||
                other.significance == significance) &&
            (identical(other.architecture, architecture) ||
                other.architecture == architecture) &&
            (identical(other.offeringsText, offeringsText) ||
                other.offeringsText == offeringsText) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
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
    city,
    state,
    country,
    address,
    overview,
    history,
    significance,
    architecture,
    offeringsText,
    lat,
    lng,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TempleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempleModelImplCopyWith<_$TempleModelImpl> get copyWith =>
      __$$TempleModelImplCopyWithImpl<_$TempleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempleModelImplToJson(this);
  }
}

abstract class _TempleModel extends TempleModel {
  const factory _TempleModel({
    required final String id,
    required final String name,
    required final String city,
    required final String state,
    required final String country,
    final String? address,
    final String? overview,
    final String? history,
    final String? significance,
    final String? architecture,
    @JsonKey(name: 'offerings_text') final String? offeringsText,
    final double? lat,
    final double? lng,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$TempleModelImpl;
  const _TempleModel._() : super._();

  factory _TempleModel.fromJson(Map<String, dynamic> json) =
      _$TempleModelImpl.fromJson;

  /// Unique identifier for the temple
  @override
  String get id;

  /// Name of the temple as it appears in the application
  @override
  String get name;

  /// City where the temple is located
  @override
  String get city;

  /// State or province where the temple is located
  @override
  String get state;

  /// Country where the temple is located
  @override
  String get country;

  /// Optional detailed street address of the temple location
  @override
  String? get address;

  /// Optional general overview or introduction about the temple
  @override
  String? get overview;

  /// Optional historical background and significance of the temple
  @override
  String? get history;

  /// Optional information about the religious or cultural significance
  @override
  String? get significance;

  /// Optional description of the temple's architectural style and features
  @override
  String? get architecture;

  /// Optional text describing what offerings are available or accepted
  @override
  @JsonKey(name: 'offerings_text')
  String? get offeringsText;

  /// Optional latitude coordinate for mapping and location services
  @override
  double? get lat;

  /// Optional longitude coordinate for mapping and location services
  @override
  double? get lng;

  /// Timestamp when the temple record was created
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Timestamp when the temple record was last updated
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of TempleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempleModelImplCopyWith<_$TempleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
