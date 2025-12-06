// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panchang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PanchangModel _$PanchangModelFromJson(Map<String, dynamic> json) {
  return _PanchangModel.fromJson(json);
}

/// @nodoc
mixin _$PanchangModel {
  @JsonKey(name: 'day')
  DayModel get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'tithi')
  TithiModel get tithi => throw _privateConstructorUsedError;
  @JsonKey(name: 'nakshatra')
  NakshatraModel get nakshatra => throw _privateConstructorUsedError;
  @JsonKey(name: 'karana')
  KaranaModel get karana => throw _privateConstructorUsedError;
  @JsonKey(name: 'yoga')
  YogaModel get yoga => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayanamsa')
  AyanamsaModel get ayanamsa => throw _privateConstructorUsedError;
  @JsonKey(name: 'rasi')
  RasiModel get rasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'sun_position')
  SunPositionModel get sunPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_position')
  MoonPositionModel get moonPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'advanced_details')
  AdvancedDetailsModel get advancedDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rahukaal')
  String get rahukaal => throw _privateConstructorUsedError;
  @JsonKey(name: 'gulika')
  String get gulika => throw _privateConstructorUsedError;
  @JsonKey(name: 'yamakanta')
  String get yamakanta => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  /// Serializes this PanchangModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PanchangModelCopyWith<PanchangModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanchangModelCopyWith<$Res> {
  factory $PanchangModelCopyWith(
    PanchangModel value,
    $Res Function(PanchangModel) then,
  ) = _$PanchangModelCopyWithImpl<$Res, PanchangModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'day') DayModel day,
    @JsonKey(name: 'tithi') TithiModel tithi,
    @JsonKey(name: 'nakshatra') NakshatraModel nakshatra,
    @JsonKey(name: 'karana') KaranaModel karana,
    @JsonKey(name: 'yoga') YogaModel yoga,
    @JsonKey(name: 'ayanamsa') AyanamsaModel ayanamsa,
    @JsonKey(name: 'rasi') RasiModel rasi,
    @JsonKey(name: 'sun_position') SunPositionModel sunPosition,
    @JsonKey(name: 'moon_position') MoonPositionModel moonPosition,
    @JsonKey(name: 'advanced_details') AdvancedDetailsModel advancedDetails,
    @JsonKey(name: 'rahukaal') String rahukaal,
    @JsonKey(name: 'gulika') String gulika,
    @JsonKey(name: 'yamakanta') String yamakanta,
    @JsonKey(name: 'date') String date,
  });

  $DayModelCopyWith<$Res> get day;
  $TithiModelCopyWith<$Res> get tithi;
  $NakshatraModelCopyWith<$Res> get nakshatra;
  $KaranaModelCopyWith<$Res> get karana;
  $YogaModelCopyWith<$Res> get yoga;
  $AyanamsaModelCopyWith<$Res> get ayanamsa;
  $RasiModelCopyWith<$Res> get rasi;
  $SunPositionModelCopyWith<$Res> get sunPosition;
  $MoonPositionModelCopyWith<$Res> get moonPosition;
  $AdvancedDetailsModelCopyWith<$Res> get advancedDetails;
}

/// @nodoc
class _$PanchangModelCopyWithImpl<$Res, $Val extends PanchangModel>
    implements $PanchangModelCopyWith<$Res> {
  _$PanchangModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? tithi = null,
    Object? nakshatra = null,
    Object? karana = null,
    Object? yoga = null,
    Object? ayanamsa = null,
    Object? rasi = null,
    Object? sunPosition = null,
    Object? moonPosition = null,
    Object? advancedDetails = null,
    Object? rahukaal = null,
    Object? gulika = null,
    Object? yamakanta = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            day: null == day
                ? _value.day
                : day // ignore: cast_nullable_to_non_nullable
                      as DayModel,
            tithi: null == tithi
                ? _value.tithi
                : tithi // ignore: cast_nullable_to_non_nullable
                      as TithiModel,
            nakshatra: null == nakshatra
                ? _value.nakshatra
                : nakshatra // ignore: cast_nullable_to_non_nullable
                      as NakshatraModel,
            karana: null == karana
                ? _value.karana
                : karana // ignore: cast_nullable_to_non_nullable
                      as KaranaModel,
            yoga: null == yoga
                ? _value.yoga
                : yoga // ignore: cast_nullable_to_non_nullable
                      as YogaModel,
            ayanamsa: null == ayanamsa
                ? _value.ayanamsa
                : ayanamsa // ignore: cast_nullable_to_non_nullable
                      as AyanamsaModel,
            rasi: null == rasi
                ? _value.rasi
                : rasi // ignore: cast_nullable_to_non_nullable
                      as RasiModel,
            sunPosition: null == sunPosition
                ? _value.sunPosition
                : sunPosition // ignore: cast_nullable_to_non_nullable
                      as SunPositionModel,
            moonPosition: null == moonPosition
                ? _value.moonPosition
                : moonPosition // ignore: cast_nullable_to_non_nullable
                      as MoonPositionModel,
            advancedDetails: null == advancedDetails
                ? _value.advancedDetails
                : advancedDetails // ignore: cast_nullable_to_non_nullable
                      as AdvancedDetailsModel,
            rahukaal: null == rahukaal
                ? _value.rahukaal
                : rahukaal // ignore: cast_nullable_to_non_nullable
                      as String,
            gulika: null == gulika
                ? _value.gulika
                : gulika // ignore: cast_nullable_to_non_nullable
                      as String,
            yamakanta: null == yamakanta
                ? _value.yamakanta
                : yamakanta // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayModelCopyWith<$Res> get day {
    return $DayModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TithiModelCopyWith<$Res> get tithi {
    return $TithiModelCopyWith<$Res>(_value.tithi, (value) {
      return _then(_value.copyWith(tithi: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NakshatraModelCopyWith<$Res> get nakshatra {
    return $NakshatraModelCopyWith<$Res>(_value.nakshatra, (value) {
      return _then(_value.copyWith(nakshatra: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KaranaModelCopyWith<$Res> get karana {
    return $KaranaModelCopyWith<$Res>(_value.karana, (value) {
      return _then(_value.copyWith(karana: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YogaModelCopyWith<$Res> get yoga {
    return $YogaModelCopyWith<$Res>(_value.yoga, (value) {
      return _then(_value.copyWith(yoga: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AyanamsaModelCopyWith<$Res> get ayanamsa {
    return $AyanamsaModelCopyWith<$Res>(_value.ayanamsa, (value) {
      return _then(_value.copyWith(ayanamsa: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RasiModelCopyWith<$Res> get rasi {
    return $RasiModelCopyWith<$Res>(_value.rasi, (value) {
      return _then(_value.copyWith(rasi: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SunPositionModelCopyWith<$Res> get sunPosition {
    return $SunPositionModelCopyWith<$Res>(_value.sunPosition, (value) {
      return _then(_value.copyWith(sunPosition: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoonPositionModelCopyWith<$Res> get moonPosition {
    return $MoonPositionModelCopyWith<$Res>(_value.moonPosition, (value) {
      return _then(_value.copyWith(moonPosition: value) as $Val);
    });
  }

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvancedDetailsModelCopyWith<$Res> get advancedDetails {
    return $AdvancedDetailsModelCopyWith<$Res>(_value.advancedDetails, (value) {
      return _then(_value.copyWith(advancedDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PanchangModelImplCopyWith<$Res>
    implements $PanchangModelCopyWith<$Res> {
  factory _$$PanchangModelImplCopyWith(
    _$PanchangModelImpl value,
    $Res Function(_$PanchangModelImpl) then,
  ) = __$$PanchangModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'day') DayModel day,
    @JsonKey(name: 'tithi') TithiModel tithi,
    @JsonKey(name: 'nakshatra') NakshatraModel nakshatra,
    @JsonKey(name: 'karana') KaranaModel karana,
    @JsonKey(name: 'yoga') YogaModel yoga,
    @JsonKey(name: 'ayanamsa') AyanamsaModel ayanamsa,
    @JsonKey(name: 'rasi') RasiModel rasi,
    @JsonKey(name: 'sun_position') SunPositionModel sunPosition,
    @JsonKey(name: 'moon_position') MoonPositionModel moonPosition,
    @JsonKey(name: 'advanced_details') AdvancedDetailsModel advancedDetails,
    @JsonKey(name: 'rahukaal') String rahukaal,
    @JsonKey(name: 'gulika') String gulika,
    @JsonKey(name: 'yamakanta') String yamakanta,
    @JsonKey(name: 'date') String date,
  });

  @override
  $DayModelCopyWith<$Res> get day;
  @override
  $TithiModelCopyWith<$Res> get tithi;
  @override
  $NakshatraModelCopyWith<$Res> get nakshatra;
  @override
  $KaranaModelCopyWith<$Res> get karana;
  @override
  $YogaModelCopyWith<$Res> get yoga;
  @override
  $AyanamsaModelCopyWith<$Res> get ayanamsa;
  @override
  $RasiModelCopyWith<$Res> get rasi;
  @override
  $SunPositionModelCopyWith<$Res> get sunPosition;
  @override
  $MoonPositionModelCopyWith<$Res> get moonPosition;
  @override
  $AdvancedDetailsModelCopyWith<$Res> get advancedDetails;
}

/// @nodoc
class __$$PanchangModelImplCopyWithImpl<$Res>
    extends _$PanchangModelCopyWithImpl<$Res, _$PanchangModelImpl>
    implements _$$PanchangModelImplCopyWith<$Res> {
  __$$PanchangModelImplCopyWithImpl(
    _$PanchangModelImpl _value,
    $Res Function(_$PanchangModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? tithi = null,
    Object? nakshatra = null,
    Object? karana = null,
    Object? yoga = null,
    Object? ayanamsa = null,
    Object? rasi = null,
    Object? sunPosition = null,
    Object? moonPosition = null,
    Object? advancedDetails = null,
    Object? rahukaal = null,
    Object? gulika = null,
    Object? yamakanta = null,
    Object? date = null,
  }) {
    return _then(
      _$PanchangModelImpl(
        day: null == day
            ? _value.day
            : day // ignore: cast_nullable_to_non_nullable
                  as DayModel,
        tithi: null == tithi
            ? _value.tithi
            : tithi // ignore: cast_nullable_to_non_nullable
                  as TithiModel,
        nakshatra: null == nakshatra
            ? _value.nakshatra
            : nakshatra // ignore: cast_nullable_to_non_nullable
                  as NakshatraModel,
        karana: null == karana
            ? _value.karana
            : karana // ignore: cast_nullable_to_non_nullable
                  as KaranaModel,
        yoga: null == yoga
            ? _value.yoga
            : yoga // ignore: cast_nullable_to_non_nullable
                  as YogaModel,
        ayanamsa: null == ayanamsa
            ? _value.ayanamsa
            : ayanamsa // ignore: cast_nullable_to_non_nullable
                  as AyanamsaModel,
        rasi: null == rasi
            ? _value.rasi
            : rasi // ignore: cast_nullable_to_non_nullable
                  as RasiModel,
        sunPosition: null == sunPosition
            ? _value.sunPosition
            : sunPosition // ignore: cast_nullable_to_non_nullable
                  as SunPositionModel,
        moonPosition: null == moonPosition
            ? _value.moonPosition
            : moonPosition // ignore: cast_nullable_to_non_nullable
                  as MoonPositionModel,
        advancedDetails: null == advancedDetails
            ? _value.advancedDetails
            : advancedDetails // ignore: cast_nullable_to_non_nullable
                  as AdvancedDetailsModel,
        rahukaal: null == rahukaal
            ? _value.rahukaal
            : rahukaal // ignore: cast_nullable_to_non_nullable
                  as String,
        gulika: null == gulika
            ? _value.gulika
            : gulika // ignore: cast_nullable_to_non_nullable
                  as String,
        yamakanta: null == yamakanta
            ? _value.yamakanta
            : yamakanta // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PanchangModelImpl extends _PanchangModel {
  const _$PanchangModelImpl({
    @JsonKey(name: 'day') required this.day,
    @JsonKey(name: 'tithi') required this.tithi,
    @JsonKey(name: 'nakshatra') required this.nakshatra,
    @JsonKey(name: 'karana') required this.karana,
    @JsonKey(name: 'yoga') required this.yoga,
    @JsonKey(name: 'ayanamsa') required this.ayanamsa,
    @JsonKey(name: 'rasi') required this.rasi,
    @JsonKey(name: 'sun_position') required this.sunPosition,
    @JsonKey(name: 'moon_position') required this.moonPosition,
    @JsonKey(name: 'advanced_details') required this.advancedDetails,
    @JsonKey(name: 'rahukaal') required this.rahukaal,
    @JsonKey(name: 'gulika') required this.gulika,
    @JsonKey(name: 'yamakanta') required this.yamakanta,
    @JsonKey(name: 'date') required this.date,
  }) : super._();

  factory _$PanchangModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanchangModelImplFromJson(json);

  @override
  @JsonKey(name: 'day')
  final DayModel day;
  @override
  @JsonKey(name: 'tithi')
  final TithiModel tithi;
  @override
  @JsonKey(name: 'nakshatra')
  final NakshatraModel nakshatra;
  @override
  @JsonKey(name: 'karana')
  final KaranaModel karana;
  @override
  @JsonKey(name: 'yoga')
  final YogaModel yoga;
  @override
  @JsonKey(name: 'ayanamsa')
  final AyanamsaModel ayanamsa;
  @override
  @JsonKey(name: 'rasi')
  final RasiModel rasi;
  @override
  @JsonKey(name: 'sun_position')
  final SunPositionModel sunPosition;
  @override
  @JsonKey(name: 'moon_position')
  final MoonPositionModel moonPosition;
  @override
  @JsonKey(name: 'advanced_details')
  final AdvancedDetailsModel advancedDetails;
  @override
  @JsonKey(name: 'rahukaal')
  final String rahukaal;
  @override
  @JsonKey(name: 'gulika')
  final String gulika;
  @override
  @JsonKey(name: 'yamakanta')
  final String yamakanta;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'PanchangModel(day: $day, tithi: $tithi, nakshatra: $nakshatra, karana: $karana, yoga: $yoga, ayanamsa: $ayanamsa, rasi: $rasi, sunPosition: $sunPosition, moonPosition: $moonPosition, advancedDetails: $advancedDetails, rahukaal: $rahukaal, gulika: $gulika, yamakanta: $yamakanta, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanchangModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.tithi, tithi) || other.tithi == tithi) &&
            (identical(other.nakshatra, nakshatra) ||
                other.nakshatra == nakshatra) &&
            (identical(other.karana, karana) || other.karana == karana) &&
            (identical(other.yoga, yoga) || other.yoga == yoga) &&
            (identical(other.ayanamsa, ayanamsa) ||
                other.ayanamsa == ayanamsa) &&
            (identical(other.rasi, rasi) || other.rasi == rasi) &&
            (identical(other.sunPosition, sunPosition) ||
                other.sunPosition == sunPosition) &&
            (identical(other.moonPosition, moonPosition) ||
                other.moonPosition == moonPosition) &&
            (identical(other.advancedDetails, advancedDetails) ||
                other.advancedDetails == advancedDetails) &&
            (identical(other.rahukaal, rahukaal) ||
                other.rahukaal == rahukaal) &&
            (identical(other.gulika, gulika) || other.gulika == gulika) &&
            (identical(other.yamakanta, yamakanta) ||
                other.yamakanta == yamakanta) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    day,
    tithi,
    nakshatra,
    karana,
    yoga,
    ayanamsa,
    rasi,
    sunPosition,
    moonPosition,
    advancedDetails,
    rahukaal,
    gulika,
    yamakanta,
    date,
  );

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PanchangModelImplCopyWith<_$PanchangModelImpl> get copyWith =>
      __$$PanchangModelImplCopyWithImpl<_$PanchangModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanchangModelImplToJson(this);
  }
}

abstract class _PanchangModel extends PanchangModel {
  const factory _PanchangModel({
    @JsonKey(name: 'day') required final DayModel day,
    @JsonKey(name: 'tithi') required final TithiModel tithi,
    @JsonKey(name: 'nakshatra') required final NakshatraModel nakshatra,
    @JsonKey(name: 'karana') required final KaranaModel karana,
    @JsonKey(name: 'yoga') required final YogaModel yoga,
    @JsonKey(name: 'ayanamsa') required final AyanamsaModel ayanamsa,
    @JsonKey(name: 'rasi') required final RasiModel rasi,
    @JsonKey(name: 'sun_position') required final SunPositionModel sunPosition,
    @JsonKey(name: 'moon_position')
    required final MoonPositionModel moonPosition,
    @JsonKey(name: 'advanced_details')
    required final AdvancedDetailsModel advancedDetails,
    @JsonKey(name: 'rahukaal') required final String rahukaal,
    @JsonKey(name: 'gulika') required final String gulika,
    @JsonKey(name: 'yamakanta') required final String yamakanta,
    @JsonKey(name: 'date') required final String date,
  }) = _$PanchangModelImpl;
  const _PanchangModel._() : super._();

  factory _PanchangModel.fromJson(Map<String, dynamic> json) =
      _$PanchangModelImpl.fromJson;

  @override
  @JsonKey(name: 'day')
  DayModel get day;
  @override
  @JsonKey(name: 'tithi')
  TithiModel get tithi;
  @override
  @JsonKey(name: 'nakshatra')
  NakshatraModel get nakshatra;
  @override
  @JsonKey(name: 'karana')
  KaranaModel get karana;
  @override
  @JsonKey(name: 'yoga')
  YogaModel get yoga;
  @override
  @JsonKey(name: 'ayanamsa')
  AyanamsaModel get ayanamsa;
  @override
  @JsonKey(name: 'rasi')
  RasiModel get rasi;
  @override
  @JsonKey(name: 'sun_position')
  SunPositionModel get sunPosition;
  @override
  @JsonKey(name: 'moon_position')
  MoonPositionModel get moonPosition;
  @override
  @JsonKey(name: 'advanced_details')
  AdvancedDetailsModel get advancedDetails;
  @override
  @JsonKey(name: 'rahukaal')
  String get rahukaal;
  @override
  @JsonKey(name: 'gulika')
  String get gulika;
  @override
  @JsonKey(name: 'yamakanta')
  String get yamakanta;
  @override
  @JsonKey(name: 'date')
  String get date;

  /// Create a copy of PanchangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanchangModelImplCopyWith<_$PanchangModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayModel _$DayModelFromJson(Map<String, dynamic> json) {
  return _DayModel.fromJson(json);
}

/// @nodoc
mixin _$DayModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this DayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayModelCopyWith<DayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayModelCopyWith<$Res> {
  factory $DayModelCopyWith(DayModel value, $Res Function(DayModel) then) =
      _$DayModelCopyWithImpl<$Res, DayModel>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$DayModelCopyWithImpl<$Res, $Val extends DayModel>
    implements $DayModelCopyWith<$Res> {
  _$DayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DayModelImplCopyWith<$Res>
    implements $DayModelCopyWith<$Res> {
  factory _$$DayModelImplCopyWith(
    _$DayModelImpl value,
    $Res Function(_$DayModelImpl) then,
  ) = __$$DayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$DayModelImplCopyWithImpl<$Res>
    extends _$DayModelCopyWithImpl<$Res, _$DayModelImpl>
    implements _$$DayModelImplCopyWith<$Res> {
  __$$DayModelImplCopyWithImpl(
    _$DayModelImpl _value,
    $Res Function(_$DayModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$DayModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DayModelImpl extends _DayModel {
  const _$DayModelImpl({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$DayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'DayModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      __$$DayModelImplCopyWithImpl<_$DayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayModelImplToJson(this);
  }
}

abstract class _DayModel extends DayModel {
  const factory _DayModel({@JsonKey(name: 'name') required final String name}) =
      _$DayModelImpl;
  const _DayModel._() : super._();

  factory _DayModel.fromJson(Map<String, dynamic> json) =
      _$DayModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TithiModel _$TithiModelFromJson(Map<String, dynamic> json) {
  return _TithiModel.fromJson(json);
}

/// @nodoc
mixin _$TithiModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_tithi')
  String get nextTithi => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'diety')
  String get diety => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'meaning')
  String get meaning => throw _privateConstructorUsedError;
  @JsonKey(name: 'special')
  String get special => throw _privateConstructorUsedError;

  /// Serializes this TithiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TithiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TithiModelCopyWith<TithiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TithiModelCopyWith<$Res> {
  factory $TithiModelCopyWith(
    TithiModel value,
    $Res Function(TithiModel) then,
  ) = _$TithiModelCopyWithImpl<$Res, TithiModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'next_tithi') String nextTithi,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
  });
}

/// @nodoc
class _$TithiModelCopyWithImpl<$Res, $Val extends TithiModel>
    implements $TithiModelCopyWith<$Res> {
  _$TithiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TithiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? nextTithi = null,
    Object? type = null,
    Object? diety = null,
    Object? start = null,
    Object? end = null,
    Object? meaning = null,
    Object? special = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            nextTithi: null == nextTithi
                ? _value.nextTithi
                : nextTithi // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            diety: null == diety
                ? _value.diety
                : diety // ignore: cast_nullable_to_non_nullable
                      as String,
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            end: null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            meaning: null == meaning
                ? _value.meaning
                : meaning // ignore: cast_nullable_to_non_nullable
                      as String,
            special: null == special
                ? _value.special
                : special // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TithiModelImplCopyWith<$Res>
    implements $TithiModelCopyWith<$Res> {
  factory _$$TithiModelImplCopyWith(
    _$TithiModelImpl value,
    $Res Function(_$TithiModelImpl) then,
  ) = __$$TithiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'next_tithi') String nextTithi,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
  });
}

/// @nodoc
class __$$TithiModelImplCopyWithImpl<$Res>
    extends _$TithiModelCopyWithImpl<$Res, _$TithiModelImpl>
    implements _$$TithiModelImplCopyWith<$Res> {
  __$$TithiModelImplCopyWithImpl(
    _$TithiModelImpl _value,
    $Res Function(_$TithiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TithiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? nextTithi = null,
    Object? type = null,
    Object? diety = null,
    Object? start = null,
    Object? end = null,
    Object? meaning = null,
    Object? special = null,
  }) {
    return _then(
      _$TithiModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        nextTithi: null == nextTithi
            ? _value.nextTithi
            : nextTithi // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        diety: null == diety
            ? _value.diety
            : diety // ignore: cast_nullable_to_non_nullable
                  as String,
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        end: null == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        meaning: null == meaning
            ? _value.meaning
            : meaning // ignore: cast_nullable_to_non_nullable
                  as String,
        special: null == special
            ? _value.special
            : special // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TithiModelImpl extends _TithiModel {
  const _$TithiModelImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'number') required this.number,
    @JsonKey(name: 'next_tithi') required this.nextTithi,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'diety') required this.diety,
    @JsonKey(name: 'start') required this.start,
    @JsonKey(name: 'end') required this.end,
    @JsonKey(name: 'meaning') required this.meaning,
    @JsonKey(name: 'special') required this.special,
  }) : super._();

  factory _$TithiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TithiModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'next_tithi')
  final String nextTithi;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'diety')
  final String diety;
  @override
  @JsonKey(name: 'start')
  final DateTime start;
  @override
  @JsonKey(name: 'end')
  final DateTime end;
  @override
  @JsonKey(name: 'meaning')
  final String meaning;
  @override
  @JsonKey(name: 'special')
  final String special;

  @override
  String toString() {
    return 'TithiModel(name: $name, number: $number, nextTithi: $nextTithi, type: $type, diety: $diety, start: $start, end: $end, meaning: $meaning, special: $special)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TithiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.nextTithi, nextTithi) ||
                other.nextTithi == nextTithi) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.diety, diety) || other.diety == diety) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.special, special) || other.special == special));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    number,
    nextTithi,
    type,
    diety,
    start,
    end,
    meaning,
    special,
  );

  /// Create a copy of TithiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TithiModelImplCopyWith<_$TithiModelImpl> get copyWith =>
      __$$TithiModelImplCopyWithImpl<_$TithiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TithiModelImplToJson(this);
  }
}

abstract class _TithiModel extends TithiModel {
  const factory _TithiModel({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'number') required final int number,
    @JsonKey(name: 'next_tithi') required final String nextTithi,
    @JsonKey(name: 'type') required final String type,
    @JsonKey(name: 'diety') required final String diety,
    @JsonKey(name: 'start') required final DateTime start,
    @JsonKey(name: 'end') required final DateTime end,
    @JsonKey(name: 'meaning') required final String meaning,
    @JsonKey(name: 'special') required final String special,
  }) = _$TithiModelImpl;
  const _TithiModel._() : super._();

  factory _TithiModel.fromJson(Map<String, dynamic> json) =
      _$TithiModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'next_tithi')
  String get nextTithi;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'diety')
  String get diety;
  @override
  @JsonKey(name: 'start')
  DateTime get start;
  @override
  @JsonKey(name: 'end')
  DateTime get end;
  @override
  @JsonKey(name: 'meaning')
  String get meaning;
  @override
  @JsonKey(name: 'special')
  String get special;

  /// Create a copy of TithiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TithiModelImplCopyWith<_$TithiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NakshatraModel _$NakshatraModelFromJson(Map<String, dynamic> json) {
  return _NakshatraModel.fromJson(json);
}

/// @nodoc
mixin _$NakshatraModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'lord')
  String get lord => throw _privateConstructorUsedError;
  @JsonKey(name: 'diety')
  String get diety => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_nakshatra')
  String get nextNakshatra => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'auspicious_disha')
  List<String> get auspiciousDisha => throw _privateConstructorUsedError;
  @JsonKey(name: 'meaning')
  String get meaning => throw _privateConstructorUsedError;
  @JsonKey(name: 'special')
  String get special => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String get summary => throw _privateConstructorUsedError;

  /// Serializes this NakshatraModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NakshatraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NakshatraModelCopyWith<NakshatraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NakshatraModelCopyWith<$Res> {
  factory $NakshatraModelCopyWith(
    NakshatraModel value,
    $Res Function(NakshatraModel) then,
  ) = _$NakshatraModelCopyWithImpl<$Res, NakshatraModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'lord') String lord,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'next_nakshatra') String nextNakshatra,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'auspicious_disha') List<String> auspiciousDisha,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
    @JsonKey(name: 'summary') String summary,
  });
}

/// @nodoc
class _$NakshatraModelCopyWithImpl<$Res, $Val extends NakshatraModel>
    implements $NakshatraModelCopyWith<$Res> {
  _$NakshatraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NakshatraModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? lord = null,
    Object? diety = null,
    Object? start = null,
    Object? nextNakshatra = null,
    Object? end = null,
    Object? auspiciousDisha = null,
    Object? meaning = null,
    Object? special = null,
    Object? summary = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            lord: null == lord
                ? _value.lord
                : lord // ignore: cast_nullable_to_non_nullable
                      as String,
            diety: null == diety
                ? _value.diety
                : diety // ignore: cast_nullable_to_non_nullable
                      as String,
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            nextNakshatra: null == nextNakshatra
                ? _value.nextNakshatra
                : nextNakshatra // ignore: cast_nullable_to_non_nullable
                      as String,
            end: null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            auspiciousDisha: null == auspiciousDisha
                ? _value.auspiciousDisha
                : auspiciousDisha // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            meaning: null == meaning
                ? _value.meaning
                : meaning // ignore: cast_nullable_to_non_nullable
                      as String,
            special: null == special
                ? _value.special
                : special // ignore: cast_nullable_to_non_nullable
                      as String,
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NakshatraModelImplCopyWith<$Res>
    implements $NakshatraModelCopyWith<$Res> {
  factory _$$NakshatraModelImplCopyWith(
    _$NakshatraModelImpl value,
    $Res Function(_$NakshatraModelImpl) then,
  ) = __$$NakshatraModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'lord') String lord,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'next_nakshatra') String nextNakshatra,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'auspicious_disha') List<String> auspiciousDisha,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
    @JsonKey(name: 'summary') String summary,
  });
}

/// @nodoc
class __$$NakshatraModelImplCopyWithImpl<$Res>
    extends _$NakshatraModelCopyWithImpl<$Res, _$NakshatraModelImpl>
    implements _$$NakshatraModelImplCopyWith<$Res> {
  __$$NakshatraModelImplCopyWithImpl(
    _$NakshatraModelImpl _value,
    $Res Function(_$NakshatraModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NakshatraModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? lord = null,
    Object? diety = null,
    Object? start = null,
    Object? nextNakshatra = null,
    Object? end = null,
    Object? auspiciousDisha = null,
    Object? meaning = null,
    Object? special = null,
    Object? summary = null,
  }) {
    return _then(
      _$NakshatraModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        lord: null == lord
            ? _value.lord
            : lord // ignore: cast_nullable_to_non_nullable
                  as String,
        diety: null == diety
            ? _value.diety
            : diety // ignore: cast_nullable_to_non_nullable
                  as String,
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        nextNakshatra: null == nextNakshatra
            ? _value.nextNakshatra
            : nextNakshatra // ignore: cast_nullable_to_non_nullable
                  as String,
        end: null == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        auspiciousDisha: null == auspiciousDisha
            ? _value._auspiciousDisha
            : auspiciousDisha // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        meaning: null == meaning
            ? _value.meaning
            : meaning // ignore: cast_nullable_to_non_nullable
                  as String,
        special: null == special
            ? _value.special
            : special // ignore: cast_nullable_to_non_nullable
                  as String,
        summary: null == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NakshatraModelImpl extends _NakshatraModel {
  const _$NakshatraModelImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'number') required this.number,
    @JsonKey(name: 'lord') required this.lord,
    @JsonKey(name: 'diety') required this.diety,
    @JsonKey(name: 'start') required this.start,
    @JsonKey(name: 'next_nakshatra') required this.nextNakshatra,
    @JsonKey(name: 'end') required this.end,
    @JsonKey(name: 'auspicious_disha')
    required final List<String> auspiciousDisha,
    @JsonKey(name: 'meaning') required this.meaning,
    @JsonKey(name: 'special') required this.special,
    @JsonKey(name: 'summary') required this.summary,
  }) : _auspiciousDisha = auspiciousDisha,
       super._();

  factory _$NakshatraModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NakshatraModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'lord')
  final String lord;
  @override
  @JsonKey(name: 'diety')
  final String diety;
  @override
  @JsonKey(name: 'start')
  final DateTime start;
  @override
  @JsonKey(name: 'next_nakshatra')
  final String nextNakshatra;
  @override
  @JsonKey(name: 'end')
  final DateTime end;
  final List<String> _auspiciousDisha;
  @override
  @JsonKey(name: 'auspicious_disha')
  List<String> get auspiciousDisha {
    if (_auspiciousDisha is EqualUnmodifiableListView) return _auspiciousDisha;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auspiciousDisha);
  }

  @override
  @JsonKey(name: 'meaning')
  final String meaning;
  @override
  @JsonKey(name: 'special')
  final String special;
  @override
  @JsonKey(name: 'summary')
  final String summary;

  @override
  String toString() {
    return 'NakshatraModel(name: $name, number: $number, lord: $lord, diety: $diety, start: $start, nextNakshatra: $nextNakshatra, end: $end, auspiciousDisha: $auspiciousDisha, meaning: $meaning, special: $special, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NakshatraModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.lord, lord) || other.lord == lord) &&
            (identical(other.diety, diety) || other.diety == diety) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.nextNakshatra, nextNakshatra) ||
                other.nextNakshatra == nextNakshatra) &&
            (identical(other.end, end) || other.end == end) &&
            const DeepCollectionEquality().equals(
              other._auspiciousDisha,
              _auspiciousDisha,
            ) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.special, special) || other.special == special) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    number,
    lord,
    diety,
    start,
    nextNakshatra,
    end,
    const DeepCollectionEquality().hash(_auspiciousDisha),
    meaning,
    special,
    summary,
  );

  /// Create a copy of NakshatraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NakshatraModelImplCopyWith<_$NakshatraModelImpl> get copyWith =>
      __$$NakshatraModelImplCopyWithImpl<_$NakshatraModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NakshatraModelImplToJson(this);
  }
}

abstract class _NakshatraModel extends NakshatraModel {
  const factory _NakshatraModel({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'number') required final int number,
    @JsonKey(name: 'lord') required final String lord,
    @JsonKey(name: 'diety') required final String diety,
    @JsonKey(name: 'start') required final DateTime start,
    @JsonKey(name: 'next_nakshatra') required final String nextNakshatra,
    @JsonKey(name: 'end') required final DateTime end,
    @JsonKey(name: 'auspicious_disha')
    required final List<String> auspiciousDisha,
    @JsonKey(name: 'meaning') required final String meaning,
    @JsonKey(name: 'special') required final String special,
    @JsonKey(name: 'summary') required final String summary,
  }) = _$NakshatraModelImpl;
  const _NakshatraModel._() : super._();

  factory _NakshatraModel.fromJson(Map<String, dynamic> json) =
      _$NakshatraModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'lord')
  String get lord;
  @override
  @JsonKey(name: 'diety')
  String get diety;
  @override
  @JsonKey(name: 'start')
  DateTime get start;
  @override
  @JsonKey(name: 'next_nakshatra')
  String get nextNakshatra;
  @override
  @JsonKey(name: 'end')
  DateTime get end;
  @override
  @JsonKey(name: 'auspicious_disha')
  List<String> get auspiciousDisha;
  @override
  @JsonKey(name: 'meaning')
  String get meaning;
  @override
  @JsonKey(name: 'special')
  String get special;
  @override
  @JsonKey(name: 'summary')
  String get summary;

  /// Create a copy of NakshatraModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NakshatraModelImplCopyWith<_$NakshatraModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KaranaModel _$KaranaModelFromJson(Map<String, dynamic> json) {
  return _KaranaModel.fromJson(json);
}

/// @nodoc
mixin _$KaranaModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'lord')
  String get lord => throw _privateConstructorUsedError;
  @JsonKey(name: 'diety')
  String get diety => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'special')
  String get special => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_karana')
  String get nextKarana => throw _privateConstructorUsedError;

  /// Serializes this KaranaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KaranaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KaranaModelCopyWith<KaranaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaranaModelCopyWith<$Res> {
  factory $KaranaModelCopyWith(
    KaranaModel value,
    $Res Function(KaranaModel) then,
  ) = _$KaranaModelCopyWithImpl<$Res, KaranaModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'lord') String lord,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'special') String special,
    @JsonKey(name: 'next_karana') String nextKarana,
  });
}

/// @nodoc
class _$KaranaModelCopyWithImpl<$Res, $Val extends KaranaModel>
    implements $KaranaModelCopyWith<$Res> {
  _$KaranaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KaranaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? type = null,
    Object? lord = null,
    Object? diety = null,
    Object? start = null,
    Object? end = null,
    Object? special = null,
    Object? nextKarana = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            lord: null == lord
                ? _value.lord
                : lord // ignore: cast_nullable_to_non_nullable
                      as String,
            diety: null == diety
                ? _value.diety
                : diety // ignore: cast_nullable_to_non_nullable
                      as String,
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            end: null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            special: null == special
                ? _value.special
                : special // ignore: cast_nullable_to_non_nullable
                      as String,
            nextKarana: null == nextKarana
                ? _value.nextKarana
                : nextKarana // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KaranaModelImplCopyWith<$Res>
    implements $KaranaModelCopyWith<$Res> {
  factory _$$KaranaModelImplCopyWith(
    _$KaranaModelImpl value,
    $Res Function(_$KaranaModelImpl) then,
  ) = __$$KaranaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'lord') String lord,
    @JsonKey(name: 'diety') String diety,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'special') String special,
    @JsonKey(name: 'next_karana') String nextKarana,
  });
}

/// @nodoc
class __$$KaranaModelImplCopyWithImpl<$Res>
    extends _$KaranaModelCopyWithImpl<$Res, _$KaranaModelImpl>
    implements _$$KaranaModelImplCopyWith<$Res> {
  __$$KaranaModelImplCopyWithImpl(
    _$KaranaModelImpl _value,
    $Res Function(_$KaranaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KaranaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? type = null,
    Object? lord = null,
    Object? diety = null,
    Object? start = null,
    Object? end = null,
    Object? special = null,
    Object? nextKarana = null,
  }) {
    return _then(
      _$KaranaModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        lord: null == lord
            ? _value.lord
            : lord // ignore: cast_nullable_to_non_nullable
                  as String,
        diety: null == diety
            ? _value.diety
            : diety // ignore: cast_nullable_to_non_nullable
                  as String,
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        end: null == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        special: null == special
            ? _value.special
            : special // ignore: cast_nullable_to_non_nullable
                  as String,
        nextKarana: null == nextKarana
            ? _value.nextKarana
            : nextKarana // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KaranaModelImpl extends _KaranaModel {
  const _$KaranaModelImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'number') required this.number,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'lord') required this.lord,
    @JsonKey(name: 'diety') required this.diety,
    @JsonKey(name: 'start') required this.start,
    @JsonKey(name: 'end') required this.end,
    @JsonKey(name: 'special') required this.special,
    @JsonKey(name: 'next_karana') required this.nextKarana,
  }) : super._();

  factory _$KaranaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KaranaModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'lord')
  final String lord;
  @override
  @JsonKey(name: 'diety')
  final String diety;
  @override
  @JsonKey(name: 'start')
  final DateTime start;
  @override
  @JsonKey(name: 'end')
  final DateTime end;
  @override
  @JsonKey(name: 'special')
  final String special;
  @override
  @JsonKey(name: 'next_karana')
  final String nextKarana;

  @override
  String toString() {
    return 'KaranaModel(name: $name, number: $number, type: $type, lord: $lord, diety: $diety, start: $start, end: $end, special: $special, nextKarana: $nextKarana)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaranaModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lord, lord) || other.lord == lord) &&
            (identical(other.diety, diety) || other.diety == diety) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.special, special) || other.special == special) &&
            (identical(other.nextKarana, nextKarana) ||
                other.nextKarana == nextKarana));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    number,
    type,
    lord,
    diety,
    start,
    end,
    special,
    nextKarana,
  );

  /// Create a copy of KaranaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KaranaModelImplCopyWith<_$KaranaModelImpl> get copyWith =>
      __$$KaranaModelImplCopyWithImpl<_$KaranaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KaranaModelImplToJson(this);
  }
}

abstract class _KaranaModel extends KaranaModel {
  const factory _KaranaModel({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'number') required final int number,
    @JsonKey(name: 'type') required final String type,
    @JsonKey(name: 'lord') required final String lord,
    @JsonKey(name: 'diety') required final String diety,
    @JsonKey(name: 'start') required final DateTime start,
    @JsonKey(name: 'end') required final DateTime end,
    @JsonKey(name: 'special') required final String special,
    @JsonKey(name: 'next_karana') required final String nextKarana,
  }) = _$KaranaModelImpl;
  const _KaranaModel._() : super._();

  factory _KaranaModel.fromJson(Map<String, dynamic> json) =
      _$KaranaModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'lord')
  String get lord;
  @override
  @JsonKey(name: 'diety')
  String get diety;
  @override
  @JsonKey(name: 'start')
  DateTime get start;
  @override
  @JsonKey(name: 'end')
  DateTime get end;
  @override
  @JsonKey(name: 'special')
  String get special;
  @override
  @JsonKey(name: 'next_karana')
  String get nextKarana;

  /// Create a copy of KaranaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KaranaModelImplCopyWith<_$KaranaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YogaModel _$YogaModelFromJson(Map<String, dynamic> json) {
  return _YogaModel.fromJson(json);
}

/// @nodoc
mixin _$YogaModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_yoga')
  String get nextYoga => throw _privateConstructorUsedError;
  @JsonKey(name: 'meaning')
  String get meaning => throw _privateConstructorUsedError;
  @JsonKey(name: 'special')
  String get special => throw _privateConstructorUsedError;

  /// Serializes this YogaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YogaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YogaModelCopyWith<YogaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YogaModelCopyWith<$Res> {
  factory $YogaModelCopyWith(YogaModel value, $Res Function(YogaModel) then) =
      _$YogaModelCopyWithImpl<$Res, YogaModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'next_yoga') String nextYoga,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
  });
}

/// @nodoc
class _$YogaModelCopyWithImpl<$Res, $Val extends YogaModel>
    implements $YogaModelCopyWith<$Res> {
  _$YogaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YogaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? start = null,
    Object? end = null,
    Object? nextYoga = null,
    Object? meaning = null,
    Object? special = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            end: null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            nextYoga: null == nextYoga
                ? _value.nextYoga
                : nextYoga // ignore: cast_nullable_to_non_nullable
                      as String,
            meaning: null == meaning
                ? _value.meaning
                : meaning // ignore: cast_nullable_to_non_nullable
                      as String,
            special: null == special
                ? _value.special
                : special // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$YogaModelImplCopyWith<$Res>
    implements $YogaModelCopyWith<$Res> {
  factory _$$YogaModelImplCopyWith(
    _$YogaModelImpl value,
    $Res Function(_$YogaModelImpl) then,
  ) = __$$YogaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'start') DateTime start,
    @JsonKey(name: 'end') DateTime end,
    @JsonKey(name: 'next_yoga') String nextYoga,
    @JsonKey(name: 'meaning') String meaning,
    @JsonKey(name: 'special') String special,
  });
}

/// @nodoc
class __$$YogaModelImplCopyWithImpl<$Res>
    extends _$YogaModelCopyWithImpl<$Res, _$YogaModelImpl>
    implements _$$YogaModelImplCopyWith<$Res> {
  __$$YogaModelImplCopyWithImpl(
    _$YogaModelImpl _value,
    $Res Function(_$YogaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YogaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? start = null,
    Object? end = null,
    Object? nextYoga = null,
    Object? meaning = null,
    Object? special = null,
  }) {
    return _then(
      _$YogaModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        end: null == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        nextYoga: null == nextYoga
            ? _value.nextYoga
            : nextYoga // ignore: cast_nullable_to_non_nullable
                  as String,
        meaning: null == meaning
            ? _value.meaning
            : meaning // ignore: cast_nullable_to_non_nullable
                  as String,
        special: null == special
            ? _value.special
            : special // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YogaModelImpl extends _YogaModel {
  const _$YogaModelImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'number') required this.number,
    @JsonKey(name: 'start') required this.start,
    @JsonKey(name: 'end') required this.end,
    @JsonKey(name: 'next_yoga') required this.nextYoga,
    @JsonKey(name: 'meaning') required this.meaning,
    @JsonKey(name: 'special') required this.special,
  }) : super._();

  factory _$YogaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YogaModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'start')
  final DateTime start;
  @override
  @JsonKey(name: 'end')
  final DateTime end;
  @override
  @JsonKey(name: 'next_yoga')
  final String nextYoga;
  @override
  @JsonKey(name: 'meaning')
  final String meaning;
  @override
  @JsonKey(name: 'special')
  final String special;

  @override
  String toString() {
    return 'YogaModel(name: $name, number: $number, start: $start, end: $end, nextYoga: $nextYoga, meaning: $meaning, special: $special)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YogaModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.nextYoga, nextYoga) ||
                other.nextYoga == nextYoga) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.special, special) || other.special == special));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    number,
    start,
    end,
    nextYoga,
    meaning,
    special,
  );

  /// Create a copy of YogaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YogaModelImplCopyWith<_$YogaModelImpl> get copyWith =>
      __$$YogaModelImplCopyWithImpl<_$YogaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YogaModelImplToJson(this);
  }
}

abstract class _YogaModel extends YogaModel {
  const factory _YogaModel({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'number') required final int number,
    @JsonKey(name: 'start') required final DateTime start,
    @JsonKey(name: 'end') required final DateTime end,
    @JsonKey(name: 'next_yoga') required final String nextYoga,
    @JsonKey(name: 'meaning') required final String meaning,
    @JsonKey(name: 'special') required final String special,
  }) = _$YogaModelImpl;
  const _YogaModel._() : super._();

  factory _YogaModel.fromJson(Map<String, dynamic> json) =
      _$YogaModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'start')
  DateTime get start;
  @override
  @JsonKey(name: 'end')
  DateTime get end;
  @override
  @JsonKey(name: 'next_yoga')
  String get nextYoga;
  @override
  @JsonKey(name: 'meaning')
  String get meaning;
  @override
  @JsonKey(name: 'special')
  String get special;

  /// Create a copy of YogaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YogaModelImplCopyWith<_$YogaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AyanamsaModel _$AyanamsaModelFromJson(Map<String, dynamic> json) {
  return _AyanamsaModel.fromJson(json);
}

/// @nodoc
mixin _$AyanamsaModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AyanamsaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyanamsaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyanamsaModelCopyWith<AyanamsaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyanamsaModelCopyWith<$Res> {
  factory $AyanamsaModelCopyWith(
    AyanamsaModel value,
    $Res Function(AyanamsaModel) then,
  ) = _$AyanamsaModelCopyWithImpl<$Res, AyanamsaModel>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$AyanamsaModelCopyWithImpl<$Res, $Val extends AyanamsaModel>
    implements $AyanamsaModelCopyWith<$Res> {
  _$AyanamsaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyanamsaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AyanamsaModelImplCopyWith<$Res>
    implements $AyanamsaModelCopyWith<$Res> {
  factory _$$AyanamsaModelImplCopyWith(
    _$AyanamsaModelImpl value,
    $Res Function(_$AyanamsaModelImpl) then,
  ) = __$$AyanamsaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$AyanamsaModelImplCopyWithImpl<$Res>
    extends _$AyanamsaModelCopyWithImpl<$Res, _$AyanamsaModelImpl>
    implements _$$AyanamsaModelImplCopyWith<$Res> {
  __$$AyanamsaModelImplCopyWithImpl(
    _$AyanamsaModelImpl _value,
    $Res Function(_$AyanamsaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AyanamsaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$AyanamsaModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AyanamsaModelImpl extends _AyanamsaModel {
  const _$AyanamsaModelImpl({@JsonKey(name: 'name') required this.name})
    : super._();

  factory _$AyanamsaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyanamsaModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'AyanamsaModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyanamsaModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AyanamsaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyanamsaModelImplCopyWith<_$AyanamsaModelImpl> get copyWith =>
      __$$AyanamsaModelImplCopyWithImpl<_$AyanamsaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyanamsaModelImplToJson(this);
  }
}

abstract class _AyanamsaModel extends AyanamsaModel {
  const factory _AyanamsaModel({
    @JsonKey(name: 'name') required final String name,
  }) = _$AyanamsaModelImpl;
  const _AyanamsaModel._() : super._();

  factory _AyanamsaModel.fromJson(Map<String, dynamic> json) =
      _$AyanamsaModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of AyanamsaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyanamsaModelImplCopyWith<_$AyanamsaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RasiModel _$RasiModelFromJson(Map<String, dynamic> json) {
  return _RasiModel.fromJson(json);
}

/// @nodoc
mixin _$RasiModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RasiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RasiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RasiModelCopyWith<RasiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RasiModelCopyWith<$Res> {
  factory $RasiModelCopyWith(RasiModel value, $Res Function(RasiModel) then) =
      _$RasiModelCopyWithImpl<$Res, RasiModel>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$RasiModelCopyWithImpl<$Res, $Val extends RasiModel>
    implements $RasiModelCopyWith<$Res> {
  _$RasiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RasiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RasiModelImplCopyWith<$Res>
    implements $RasiModelCopyWith<$Res> {
  factory _$$RasiModelImplCopyWith(
    _$RasiModelImpl value,
    $Res Function(_$RasiModelImpl) then,
  ) = __$$RasiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$RasiModelImplCopyWithImpl<$Res>
    extends _$RasiModelCopyWithImpl<$Res, _$RasiModelImpl>
    implements _$$RasiModelImplCopyWith<$Res> {
  __$$RasiModelImplCopyWithImpl(
    _$RasiModelImpl _value,
    $Res Function(_$RasiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RasiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$RasiModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RasiModelImpl extends _RasiModel {
  const _$RasiModelImpl({@JsonKey(name: 'name') required this.name})
    : super._();

  factory _$RasiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RasiModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'RasiModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RasiModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of RasiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RasiModelImplCopyWith<_$RasiModelImpl> get copyWith =>
      __$$RasiModelImplCopyWithImpl<_$RasiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RasiModelImplToJson(this);
  }
}

abstract class _RasiModel extends RasiModel {
  const factory _RasiModel({
    @JsonKey(name: 'name') required final String name,
  }) = _$RasiModelImpl;
  const _RasiModel._() : super._();

  factory _RasiModel.fromJson(Map<String, dynamic> json) =
      _$RasiModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of RasiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RasiModelImplCopyWith<_$RasiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SunPositionModel _$SunPositionModelFromJson(Map<String, dynamic> json) {
  return _SunPositionModel.fromJson(json);
}

/// @nodoc
mixin _$SunPositionModel {
  @JsonKey(name: 'zodiac')
  String get zodiac => throw _privateConstructorUsedError;
  @JsonKey(name: 'nakshatra')
  String get nakshatra => throw _privateConstructorUsedError;
  @JsonKey(name: 'rasi_no')
  int get rasiNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'nakshatra_no')
  int get nakshatraNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'sun_degree_at_rise')
  double get sunDegreeAtRise => throw _privateConstructorUsedError;

  /// Serializes this SunPositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SunPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SunPositionModelCopyWith<SunPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunPositionModelCopyWith<$Res> {
  factory $SunPositionModelCopyWith(
    SunPositionModel value,
    $Res Function(SunPositionModel) then,
  ) = _$SunPositionModelCopyWithImpl<$Res, SunPositionModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'zodiac') String zodiac,
    @JsonKey(name: 'nakshatra') String nakshatra,
    @JsonKey(name: 'rasi_no') int rasiNo,
    @JsonKey(name: 'nakshatra_no') int nakshatraNo,
    @JsonKey(name: 'sun_degree_at_rise') double sunDegreeAtRise,
  });
}

/// @nodoc
class _$SunPositionModelCopyWithImpl<$Res, $Val extends SunPositionModel>
    implements $SunPositionModelCopyWith<$Res> {
  _$SunPositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SunPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zodiac = null,
    Object? nakshatra = null,
    Object? rasiNo = null,
    Object? nakshatraNo = null,
    Object? sunDegreeAtRise = null,
  }) {
    return _then(
      _value.copyWith(
            zodiac: null == zodiac
                ? _value.zodiac
                : zodiac // ignore: cast_nullable_to_non_nullable
                      as String,
            nakshatra: null == nakshatra
                ? _value.nakshatra
                : nakshatra // ignore: cast_nullable_to_non_nullable
                      as String,
            rasiNo: null == rasiNo
                ? _value.rasiNo
                : rasiNo // ignore: cast_nullable_to_non_nullable
                      as int,
            nakshatraNo: null == nakshatraNo
                ? _value.nakshatraNo
                : nakshatraNo // ignore: cast_nullable_to_non_nullable
                      as int,
            sunDegreeAtRise: null == sunDegreeAtRise
                ? _value.sunDegreeAtRise
                : sunDegreeAtRise // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SunPositionModelImplCopyWith<$Res>
    implements $SunPositionModelCopyWith<$Res> {
  factory _$$SunPositionModelImplCopyWith(
    _$SunPositionModelImpl value,
    $Res Function(_$SunPositionModelImpl) then,
  ) = __$$SunPositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'zodiac') String zodiac,
    @JsonKey(name: 'nakshatra') String nakshatra,
    @JsonKey(name: 'rasi_no') int rasiNo,
    @JsonKey(name: 'nakshatra_no') int nakshatraNo,
    @JsonKey(name: 'sun_degree_at_rise') double sunDegreeAtRise,
  });
}

/// @nodoc
class __$$SunPositionModelImplCopyWithImpl<$Res>
    extends _$SunPositionModelCopyWithImpl<$Res, _$SunPositionModelImpl>
    implements _$$SunPositionModelImplCopyWith<$Res> {
  __$$SunPositionModelImplCopyWithImpl(
    _$SunPositionModelImpl _value,
    $Res Function(_$SunPositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SunPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zodiac = null,
    Object? nakshatra = null,
    Object? rasiNo = null,
    Object? nakshatraNo = null,
    Object? sunDegreeAtRise = null,
  }) {
    return _then(
      _$SunPositionModelImpl(
        zodiac: null == zodiac
            ? _value.zodiac
            : zodiac // ignore: cast_nullable_to_non_nullable
                  as String,
        nakshatra: null == nakshatra
            ? _value.nakshatra
            : nakshatra // ignore: cast_nullable_to_non_nullable
                  as String,
        rasiNo: null == rasiNo
            ? _value.rasiNo
            : rasiNo // ignore: cast_nullable_to_non_nullable
                  as int,
        nakshatraNo: null == nakshatraNo
            ? _value.nakshatraNo
            : nakshatraNo // ignore: cast_nullable_to_non_nullable
                  as int,
        sunDegreeAtRise: null == sunDegreeAtRise
            ? _value.sunDegreeAtRise
            : sunDegreeAtRise // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SunPositionModelImpl extends _SunPositionModel {
  const _$SunPositionModelImpl({
    @JsonKey(name: 'zodiac') required this.zodiac,
    @JsonKey(name: 'nakshatra') required this.nakshatra,
    @JsonKey(name: 'rasi_no') required this.rasiNo,
    @JsonKey(name: 'nakshatra_no') required this.nakshatraNo,
    @JsonKey(name: 'sun_degree_at_rise') required this.sunDegreeAtRise,
  }) : super._();

  factory _$SunPositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SunPositionModelImplFromJson(json);

  @override
  @JsonKey(name: 'zodiac')
  final String zodiac;
  @override
  @JsonKey(name: 'nakshatra')
  final String nakshatra;
  @override
  @JsonKey(name: 'rasi_no')
  final int rasiNo;
  @override
  @JsonKey(name: 'nakshatra_no')
  final int nakshatraNo;
  @override
  @JsonKey(name: 'sun_degree_at_rise')
  final double sunDegreeAtRise;

  @override
  String toString() {
    return 'SunPositionModel(zodiac: $zodiac, nakshatra: $nakshatra, rasiNo: $rasiNo, nakshatraNo: $nakshatraNo, sunDegreeAtRise: $sunDegreeAtRise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SunPositionModelImpl &&
            (identical(other.zodiac, zodiac) || other.zodiac == zodiac) &&
            (identical(other.nakshatra, nakshatra) ||
                other.nakshatra == nakshatra) &&
            (identical(other.rasiNo, rasiNo) || other.rasiNo == rasiNo) &&
            (identical(other.nakshatraNo, nakshatraNo) ||
                other.nakshatraNo == nakshatraNo) &&
            (identical(other.sunDegreeAtRise, sunDegreeAtRise) ||
                other.sunDegreeAtRise == sunDegreeAtRise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    zodiac,
    nakshatra,
    rasiNo,
    nakshatraNo,
    sunDegreeAtRise,
  );

  /// Create a copy of SunPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SunPositionModelImplCopyWith<_$SunPositionModelImpl> get copyWith =>
      __$$SunPositionModelImplCopyWithImpl<_$SunPositionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SunPositionModelImplToJson(this);
  }
}

abstract class _SunPositionModel extends SunPositionModel {
  const factory _SunPositionModel({
    @JsonKey(name: 'zodiac') required final String zodiac,
    @JsonKey(name: 'nakshatra') required final String nakshatra,
    @JsonKey(name: 'rasi_no') required final int rasiNo,
    @JsonKey(name: 'nakshatra_no') required final int nakshatraNo,
    @JsonKey(name: 'sun_degree_at_rise') required final double sunDegreeAtRise,
  }) = _$SunPositionModelImpl;
  const _SunPositionModel._() : super._();

  factory _SunPositionModel.fromJson(Map<String, dynamic> json) =
      _$SunPositionModelImpl.fromJson;

  @override
  @JsonKey(name: 'zodiac')
  String get zodiac;
  @override
  @JsonKey(name: 'nakshatra')
  String get nakshatra;
  @override
  @JsonKey(name: 'rasi_no')
  int get rasiNo;
  @override
  @JsonKey(name: 'nakshatra_no')
  int get nakshatraNo;
  @override
  @JsonKey(name: 'sun_degree_at_rise')
  double get sunDegreeAtRise;

  /// Create a copy of SunPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SunPositionModelImplCopyWith<_$SunPositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoonPositionModel _$MoonPositionModelFromJson(Map<String, dynamic> json) {
  return _MoonPositionModel.fromJson(json);
}

/// @nodoc
mixin _$MoonPositionModel {
  @JsonKey(name: 'moon_degree')
  double get moonDegree => throw _privateConstructorUsedError;

  /// Serializes this MoonPositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoonPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoonPositionModelCopyWith<MoonPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoonPositionModelCopyWith<$Res> {
  factory $MoonPositionModelCopyWith(
    MoonPositionModel value,
    $Res Function(MoonPositionModel) then,
  ) = _$MoonPositionModelCopyWithImpl<$Res, MoonPositionModel>;
  @useResult
  $Res call({@JsonKey(name: 'moon_degree') double moonDegree});
}

/// @nodoc
class _$MoonPositionModelCopyWithImpl<$Res, $Val extends MoonPositionModel>
    implements $MoonPositionModelCopyWith<$Res> {
  _$MoonPositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoonPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? moonDegree = null}) {
    return _then(
      _value.copyWith(
            moonDegree: null == moonDegree
                ? _value.moonDegree
                : moonDegree // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoonPositionModelImplCopyWith<$Res>
    implements $MoonPositionModelCopyWith<$Res> {
  factory _$$MoonPositionModelImplCopyWith(
    _$MoonPositionModelImpl value,
    $Res Function(_$MoonPositionModelImpl) then,
  ) = __$$MoonPositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'moon_degree') double moonDegree});
}

/// @nodoc
class __$$MoonPositionModelImplCopyWithImpl<$Res>
    extends _$MoonPositionModelCopyWithImpl<$Res, _$MoonPositionModelImpl>
    implements _$$MoonPositionModelImplCopyWith<$Res> {
  __$$MoonPositionModelImplCopyWithImpl(
    _$MoonPositionModelImpl _value,
    $Res Function(_$MoonPositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoonPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? moonDegree = null}) {
    return _then(
      _$MoonPositionModelImpl(
        moonDegree: null == moonDegree
            ? _value.moonDegree
            : moonDegree // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoonPositionModelImpl extends _MoonPositionModel {
  const _$MoonPositionModelImpl({
    @JsonKey(name: 'moon_degree') required this.moonDegree,
  }) : super._();

  factory _$MoonPositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoonPositionModelImplFromJson(json);

  @override
  @JsonKey(name: 'moon_degree')
  final double moonDegree;

  @override
  String toString() {
    return 'MoonPositionModel(moonDegree: $moonDegree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoonPositionModelImpl &&
            (identical(other.moonDegree, moonDegree) ||
                other.moonDegree == moonDegree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, moonDegree);

  /// Create a copy of MoonPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoonPositionModelImplCopyWith<_$MoonPositionModelImpl> get copyWith =>
      __$$MoonPositionModelImplCopyWithImpl<_$MoonPositionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MoonPositionModelImplToJson(this);
  }
}

abstract class _MoonPositionModel extends MoonPositionModel {
  const factory _MoonPositionModel({
    @JsonKey(name: 'moon_degree') required final double moonDegree,
  }) = _$MoonPositionModelImpl;
  const _MoonPositionModel._() : super._();

  factory _MoonPositionModel.fromJson(Map<String, dynamic> json) =
      _$MoonPositionModelImpl.fromJson;

  @override
  @JsonKey(name: 'moon_degree')
  double get moonDegree;

  /// Create a copy of MoonPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoonPositionModelImplCopyWith<_$MoonPositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvancedDetailsModel _$AdvancedDetailsModelFromJson(Map<String, dynamic> json) {
  return _AdvancedDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AdvancedDetailsModel {
  @JsonKey(name: 'sun_rise')
  String get sunRise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sun_set')
  String get sunSet => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_rise')
  String get moonRise => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_set')
  String get moonSet => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_full_moon')
  String get nextFullMoon => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_new_moon')
  String get nextNewMoon => throw _privateConstructorUsedError;
  @JsonKey(name: 'masa')
  MasaModel get masa => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_yogini_nivas')
  String get moonYoginiNivas => throw _privateConstructorUsedError;
  @JsonKey(name: 'ahargana')
  double get ahargana => throw _privateConstructorUsedError;
  @JsonKey(name: 'years')
  YearsModel get years => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaara')
  String get vaara => throw _privateConstructorUsedError;
  @JsonKey(name: 'disha_shool')
  String get dishaShool => throw _privateConstructorUsedError;
  @JsonKey(name: 'abhijit_muhurta')
  AbhijitMuhurtaModel get abhijitMuhurta => throw _privateConstructorUsedError;

  /// Serializes this AdvancedDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvancedDetailsModelCopyWith<AdvancedDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedDetailsModelCopyWith<$Res> {
  factory $AdvancedDetailsModelCopyWith(
    AdvancedDetailsModel value,
    $Res Function(AdvancedDetailsModel) then,
  ) = _$AdvancedDetailsModelCopyWithImpl<$Res, AdvancedDetailsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'sun_rise') String sunRise,
    @JsonKey(name: 'sun_set') String sunSet,
    @JsonKey(name: 'moon_rise') String moonRise,
    @JsonKey(name: 'moon_set') String moonSet,
    @JsonKey(name: 'next_full_moon') String nextFullMoon,
    @JsonKey(name: 'next_new_moon') String nextNewMoon,
    @JsonKey(name: 'masa') MasaModel masa,
    @JsonKey(name: 'moon_yogini_nivas') String moonYoginiNivas,
    @JsonKey(name: 'ahargana') double ahargana,
    @JsonKey(name: 'years') YearsModel years,
    @JsonKey(name: 'vaara') String vaara,
    @JsonKey(name: 'disha_shool') String dishaShool,
    @JsonKey(name: 'abhijit_muhurta') AbhijitMuhurtaModel abhijitMuhurta,
  });

  $MasaModelCopyWith<$Res> get masa;
  $YearsModelCopyWith<$Res> get years;
  $AbhijitMuhurtaModelCopyWith<$Res> get abhijitMuhurta;
}

/// @nodoc
class _$AdvancedDetailsModelCopyWithImpl<
  $Res,
  $Val extends AdvancedDetailsModel
>
    implements $AdvancedDetailsModelCopyWith<$Res> {
  _$AdvancedDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunRise = null,
    Object? sunSet = null,
    Object? moonRise = null,
    Object? moonSet = null,
    Object? nextFullMoon = null,
    Object? nextNewMoon = null,
    Object? masa = null,
    Object? moonYoginiNivas = null,
    Object? ahargana = null,
    Object? years = null,
    Object? vaara = null,
    Object? dishaShool = null,
    Object? abhijitMuhurta = null,
  }) {
    return _then(
      _value.copyWith(
            sunRise: null == sunRise
                ? _value.sunRise
                : sunRise // ignore: cast_nullable_to_non_nullable
                      as String,
            sunSet: null == sunSet
                ? _value.sunSet
                : sunSet // ignore: cast_nullable_to_non_nullable
                      as String,
            moonRise: null == moonRise
                ? _value.moonRise
                : moonRise // ignore: cast_nullable_to_non_nullable
                      as String,
            moonSet: null == moonSet
                ? _value.moonSet
                : moonSet // ignore: cast_nullable_to_non_nullable
                      as String,
            nextFullMoon: null == nextFullMoon
                ? _value.nextFullMoon
                : nextFullMoon // ignore: cast_nullable_to_non_nullable
                      as String,
            nextNewMoon: null == nextNewMoon
                ? _value.nextNewMoon
                : nextNewMoon // ignore: cast_nullable_to_non_nullable
                      as String,
            masa: null == masa
                ? _value.masa
                : masa // ignore: cast_nullable_to_non_nullable
                      as MasaModel,
            moonYoginiNivas: null == moonYoginiNivas
                ? _value.moonYoginiNivas
                : moonYoginiNivas // ignore: cast_nullable_to_non_nullable
                      as String,
            ahargana: null == ahargana
                ? _value.ahargana
                : ahargana // ignore: cast_nullable_to_non_nullable
                      as double,
            years: null == years
                ? _value.years
                : years // ignore: cast_nullable_to_non_nullable
                      as YearsModel,
            vaara: null == vaara
                ? _value.vaara
                : vaara // ignore: cast_nullable_to_non_nullable
                      as String,
            dishaShool: null == dishaShool
                ? _value.dishaShool
                : dishaShool // ignore: cast_nullable_to_non_nullable
                      as String,
            abhijitMuhurta: null == abhijitMuhurta
                ? _value.abhijitMuhurta
                : abhijitMuhurta // ignore: cast_nullable_to_non_nullable
                      as AbhijitMuhurtaModel,
          )
          as $Val,
    );
  }

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MasaModelCopyWith<$Res> get masa {
    return $MasaModelCopyWith<$Res>(_value.masa, (value) {
      return _then(_value.copyWith(masa: value) as $Val);
    });
  }

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YearsModelCopyWith<$Res> get years {
    return $YearsModelCopyWith<$Res>(_value.years, (value) {
      return _then(_value.copyWith(years: value) as $Val);
    });
  }

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbhijitMuhurtaModelCopyWith<$Res> get abhijitMuhurta {
    return $AbhijitMuhurtaModelCopyWith<$Res>(_value.abhijitMuhurta, (value) {
      return _then(_value.copyWith(abhijitMuhurta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvancedDetailsModelImplCopyWith<$Res>
    implements $AdvancedDetailsModelCopyWith<$Res> {
  factory _$$AdvancedDetailsModelImplCopyWith(
    _$AdvancedDetailsModelImpl value,
    $Res Function(_$AdvancedDetailsModelImpl) then,
  ) = __$$AdvancedDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'sun_rise') String sunRise,
    @JsonKey(name: 'sun_set') String sunSet,
    @JsonKey(name: 'moon_rise') String moonRise,
    @JsonKey(name: 'moon_set') String moonSet,
    @JsonKey(name: 'next_full_moon') String nextFullMoon,
    @JsonKey(name: 'next_new_moon') String nextNewMoon,
    @JsonKey(name: 'masa') MasaModel masa,
    @JsonKey(name: 'moon_yogini_nivas') String moonYoginiNivas,
    @JsonKey(name: 'ahargana') double ahargana,
    @JsonKey(name: 'years') YearsModel years,
    @JsonKey(name: 'vaara') String vaara,
    @JsonKey(name: 'disha_shool') String dishaShool,
    @JsonKey(name: 'abhijit_muhurta') AbhijitMuhurtaModel abhijitMuhurta,
  });

  @override
  $MasaModelCopyWith<$Res> get masa;
  @override
  $YearsModelCopyWith<$Res> get years;
  @override
  $AbhijitMuhurtaModelCopyWith<$Res> get abhijitMuhurta;
}

/// @nodoc
class __$$AdvancedDetailsModelImplCopyWithImpl<$Res>
    extends _$AdvancedDetailsModelCopyWithImpl<$Res, _$AdvancedDetailsModelImpl>
    implements _$$AdvancedDetailsModelImplCopyWith<$Res> {
  __$$AdvancedDetailsModelImplCopyWithImpl(
    _$AdvancedDetailsModelImpl _value,
    $Res Function(_$AdvancedDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunRise = null,
    Object? sunSet = null,
    Object? moonRise = null,
    Object? moonSet = null,
    Object? nextFullMoon = null,
    Object? nextNewMoon = null,
    Object? masa = null,
    Object? moonYoginiNivas = null,
    Object? ahargana = null,
    Object? years = null,
    Object? vaara = null,
    Object? dishaShool = null,
    Object? abhijitMuhurta = null,
  }) {
    return _then(
      _$AdvancedDetailsModelImpl(
        sunRise: null == sunRise
            ? _value.sunRise
            : sunRise // ignore: cast_nullable_to_non_nullable
                  as String,
        sunSet: null == sunSet
            ? _value.sunSet
            : sunSet // ignore: cast_nullable_to_non_nullable
                  as String,
        moonRise: null == moonRise
            ? _value.moonRise
            : moonRise // ignore: cast_nullable_to_non_nullable
                  as String,
        moonSet: null == moonSet
            ? _value.moonSet
            : moonSet // ignore: cast_nullable_to_non_nullable
                  as String,
        nextFullMoon: null == nextFullMoon
            ? _value.nextFullMoon
            : nextFullMoon // ignore: cast_nullable_to_non_nullable
                  as String,
        nextNewMoon: null == nextNewMoon
            ? _value.nextNewMoon
            : nextNewMoon // ignore: cast_nullable_to_non_nullable
                  as String,
        masa: null == masa
            ? _value.masa
            : masa // ignore: cast_nullable_to_non_nullable
                  as MasaModel,
        moonYoginiNivas: null == moonYoginiNivas
            ? _value.moonYoginiNivas
            : moonYoginiNivas // ignore: cast_nullable_to_non_nullable
                  as String,
        ahargana: null == ahargana
            ? _value.ahargana
            : ahargana // ignore: cast_nullable_to_non_nullable
                  as double,
        years: null == years
            ? _value.years
            : years // ignore: cast_nullable_to_non_nullable
                  as YearsModel,
        vaara: null == vaara
            ? _value.vaara
            : vaara // ignore: cast_nullable_to_non_nullable
                  as String,
        dishaShool: null == dishaShool
            ? _value.dishaShool
            : dishaShool // ignore: cast_nullable_to_non_nullable
                  as String,
        abhijitMuhurta: null == abhijitMuhurta
            ? _value.abhijitMuhurta
            : abhijitMuhurta // ignore: cast_nullable_to_non_nullable
                  as AbhijitMuhurtaModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedDetailsModelImpl extends _AdvancedDetailsModel {
  const _$AdvancedDetailsModelImpl({
    @JsonKey(name: 'sun_rise') required this.sunRise,
    @JsonKey(name: 'sun_set') required this.sunSet,
    @JsonKey(name: 'moon_rise') required this.moonRise,
    @JsonKey(name: 'moon_set') required this.moonSet,
    @JsonKey(name: 'next_full_moon') required this.nextFullMoon,
    @JsonKey(name: 'next_new_moon') required this.nextNewMoon,
    @JsonKey(name: 'masa') required this.masa,
    @JsonKey(name: 'moon_yogini_nivas') required this.moonYoginiNivas,
    @JsonKey(name: 'ahargana') required this.ahargana,
    @JsonKey(name: 'years') required this.years,
    @JsonKey(name: 'vaara') required this.vaara,
    @JsonKey(name: 'disha_shool') required this.dishaShool,
    @JsonKey(name: 'abhijit_muhurta') required this.abhijitMuhurta,
  }) : super._();

  factory _$AdvancedDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'sun_rise')
  final String sunRise;
  @override
  @JsonKey(name: 'sun_set')
  final String sunSet;
  @override
  @JsonKey(name: 'moon_rise')
  final String moonRise;
  @override
  @JsonKey(name: 'moon_set')
  final String moonSet;
  @override
  @JsonKey(name: 'next_full_moon')
  final String nextFullMoon;
  @override
  @JsonKey(name: 'next_new_moon')
  final String nextNewMoon;
  @override
  @JsonKey(name: 'masa')
  final MasaModel masa;
  @override
  @JsonKey(name: 'moon_yogini_nivas')
  final String moonYoginiNivas;
  @override
  @JsonKey(name: 'ahargana')
  final double ahargana;
  @override
  @JsonKey(name: 'years')
  final YearsModel years;
  @override
  @JsonKey(name: 'vaara')
  final String vaara;
  @override
  @JsonKey(name: 'disha_shool')
  final String dishaShool;
  @override
  @JsonKey(name: 'abhijit_muhurta')
  final AbhijitMuhurtaModel abhijitMuhurta;

  @override
  String toString() {
    return 'AdvancedDetailsModel(sunRise: $sunRise, sunSet: $sunSet, moonRise: $moonRise, moonSet: $moonSet, nextFullMoon: $nextFullMoon, nextNewMoon: $nextNewMoon, masa: $masa, moonYoginiNivas: $moonYoginiNivas, ahargana: $ahargana, years: $years, vaara: $vaara, dishaShool: $dishaShool, abhijitMuhurta: $abhijitMuhurta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedDetailsModelImpl &&
            (identical(other.sunRise, sunRise) || other.sunRise == sunRise) &&
            (identical(other.sunSet, sunSet) || other.sunSet == sunSet) &&
            (identical(other.moonRise, moonRise) ||
                other.moonRise == moonRise) &&
            (identical(other.moonSet, moonSet) || other.moonSet == moonSet) &&
            (identical(other.nextFullMoon, nextFullMoon) ||
                other.nextFullMoon == nextFullMoon) &&
            (identical(other.nextNewMoon, nextNewMoon) ||
                other.nextNewMoon == nextNewMoon) &&
            (identical(other.masa, masa) || other.masa == masa) &&
            (identical(other.moonYoginiNivas, moonYoginiNivas) ||
                other.moonYoginiNivas == moonYoginiNivas) &&
            (identical(other.ahargana, ahargana) ||
                other.ahargana == ahargana) &&
            (identical(other.years, years) || other.years == years) &&
            (identical(other.vaara, vaara) || other.vaara == vaara) &&
            (identical(other.dishaShool, dishaShool) ||
                other.dishaShool == dishaShool) &&
            (identical(other.abhijitMuhurta, abhijitMuhurta) ||
                other.abhijitMuhurta == abhijitMuhurta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sunRise,
    sunSet,
    moonRise,
    moonSet,
    nextFullMoon,
    nextNewMoon,
    masa,
    moonYoginiNivas,
    ahargana,
    years,
    vaara,
    dishaShool,
    abhijitMuhurta,
  );

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedDetailsModelImplCopyWith<_$AdvancedDetailsModelImpl>
  get copyWith =>
      __$$AdvancedDetailsModelImplCopyWithImpl<_$AdvancedDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedDetailsModelImplToJson(this);
  }
}

abstract class _AdvancedDetailsModel extends AdvancedDetailsModel {
  const factory _AdvancedDetailsModel({
    @JsonKey(name: 'sun_rise') required final String sunRise,
    @JsonKey(name: 'sun_set') required final String sunSet,
    @JsonKey(name: 'moon_rise') required final String moonRise,
    @JsonKey(name: 'moon_set') required final String moonSet,
    @JsonKey(name: 'next_full_moon') required final String nextFullMoon,
    @JsonKey(name: 'next_new_moon') required final String nextNewMoon,
    @JsonKey(name: 'masa') required final MasaModel masa,
    @JsonKey(name: 'moon_yogini_nivas') required final String moonYoginiNivas,
    @JsonKey(name: 'ahargana') required final double ahargana,
    @JsonKey(name: 'years') required final YearsModel years,
    @JsonKey(name: 'vaara') required final String vaara,
    @JsonKey(name: 'disha_shool') required final String dishaShool,
    @JsonKey(name: 'abhijit_muhurta')
    required final AbhijitMuhurtaModel abhijitMuhurta,
  }) = _$AdvancedDetailsModelImpl;
  const _AdvancedDetailsModel._() : super._();

  factory _AdvancedDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AdvancedDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'sun_rise')
  String get sunRise;
  @override
  @JsonKey(name: 'sun_set')
  String get sunSet;
  @override
  @JsonKey(name: 'moon_rise')
  String get moonRise;
  @override
  @JsonKey(name: 'moon_set')
  String get moonSet;
  @override
  @JsonKey(name: 'next_full_moon')
  String get nextFullMoon;
  @override
  @JsonKey(name: 'next_new_moon')
  String get nextNewMoon;
  @override
  @JsonKey(name: 'masa')
  MasaModel get masa;
  @override
  @JsonKey(name: 'moon_yogini_nivas')
  String get moonYoginiNivas;
  @override
  @JsonKey(name: 'ahargana')
  double get ahargana;
  @override
  @JsonKey(name: 'years')
  YearsModel get years;
  @override
  @JsonKey(name: 'vaara')
  String get vaara;
  @override
  @JsonKey(name: 'disha_shool')
  String get dishaShool;
  @override
  @JsonKey(name: 'abhijit_muhurta')
  AbhijitMuhurtaModel get abhijitMuhurta;

  /// Create a copy of AdvancedDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvancedDetailsModelImplCopyWith<_$AdvancedDetailsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MasaModel _$MasaModelFromJson(Map<String, dynamic> json) {
  return _MasaModel.fromJson(json);
}

/// @nodoc
mixin _$MasaModel {
  @JsonKey(name: 'amanta_number')
  int get amantaNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'amanta_date')
  int get amantaDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'amanta_name')
  String get amantaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternate_amanta_name')
  String get alternateAmantaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'amanta_start')
  String get amantaStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'amanta_end')
  String get amantaEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'adhik_maasa')
  bool get adhikMaasa => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayana')
  String get ayana => throw _privateConstructorUsedError;
  @JsonKey(name: 'real_ayana')
  String get realAyana => throw _privateConstructorUsedError;
  @JsonKey(name: 'tamil_month_num')
  int get tamilMonthNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'tamil_month')
  String get tamilMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'tamil_day')
  int get tamilDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'purnimanta_date')
  int get purnimantaDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'purnimanta_number')
  int get purnimantaNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'purnimanta_name')
  String get purnimantaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternate_purnimanta_name')
  String get alternatePurnimantaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'purnimanta_start')
  String get purnimantaStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'purnimanta_end')
  String get purnimantaEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_phase')
  String get moonPhase => throw _privateConstructorUsedError;
  @JsonKey(name: 'paksha')
  String get paksha => throw _privateConstructorUsedError;
  @JsonKey(name: 'ritu')
  String get ritu => throw _privateConstructorUsedError;
  @JsonKey(name: 'ritu_tamil')
  String get rituTamil => throw _privateConstructorUsedError;

  /// Serializes this MasaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasaModelCopyWith<MasaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasaModelCopyWith<$Res> {
  factory $MasaModelCopyWith(MasaModel value, $Res Function(MasaModel) then) =
      _$MasaModelCopyWithImpl<$Res, MasaModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'amanta_number') int amantaNumber,
    @JsonKey(name: 'amanta_date') int amantaDate,
    @JsonKey(name: 'amanta_name') String amantaName,
    @JsonKey(name: 'alternate_amanta_name') String alternateAmantaName,
    @JsonKey(name: 'amanta_start') String amantaStart,
    @JsonKey(name: 'amanta_end') String amantaEnd,
    @JsonKey(name: 'adhik_maasa') bool adhikMaasa,
    @JsonKey(name: 'ayana') String ayana,
    @JsonKey(name: 'real_ayana') String realAyana,
    @JsonKey(name: 'tamil_month_num') int tamilMonthNum,
    @JsonKey(name: 'tamil_month') String tamilMonth,
    @JsonKey(name: 'tamil_day') int tamilDay,
    @JsonKey(name: 'purnimanta_date') int purnimantaDate,
    @JsonKey(name: 'purnimanta_number') int purnimantaNumber,
    @JsonKey(name: 'purnimanta_name') String purnimantaName,
    @JsonKey(name: 'alternate_purnimanta_name') String alternatePurnimantaName,
    @JsonKey(name: 'purnimanta_start') String purnimantaStart,
    @JsonKey(name: 'purnimanta_end') String purnimantaEnd,
    @JsonKey(name: 'moon_phase') String moonPhase,
    @JsonKey(name: 'paksha') String paksha,
    @JsonKey(name: 'ritu') String ritu,
    @JsonKey(name: 'ritu_tamil') String rituTamil,
  });
}

/// @nodoc
class _$MasaModelCopyWithImpl<$Res, $Val extends MasaModel>
    implements $MasaModelCopyWith<$Res> {
  _$MasaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amantaNumber = null,
    Object? amantaDate = null,
    Object? amantaName = null,
    Object? alternateAmantaName = null,
    Object? amantaStart = null,
    Object? amantaEnd = null,
    Object? adhikMaasa = null,
    Object? ayana = null,
    Object? realAyana = null,
    Object? tamilMonthNum = null,
    Object? tamilMonth = null,
    Object? tamilDay = null,
    Object? purnimantaDate = null,
    Object? purnimantaNumber = null,
    Object? purnimantaName = null,
    Object? alternatePurnimantaName = null,
    Object? purnimantaStart = null,
    Object? purnimantaEnd = null,
    Object? moonPhase = null,
    Object? paksha = null,
    Object? ritu = null,
    Object? rituTamil = null,
  }) {
    return _then(
      _value.copyWith(
            amantaNumber: null == amantaNumber
                ? _value.amantaNumber
                : amantaNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            amantaDate: null == amantaDate
                ? _value.amantaDate
                : amantaDate // ignore: cast_nullable_to_non_nullable
                      as int,
            amantaName: null == amantaName
                ? _value.amantaName
                : amantaName // ignore: cast_nullable_to_non_nullable
                      as String,
            alternateAmantaName: null == alternateAmantaName
                ? _value.alternateAmantaName
                : alternateAmantaName // ignore: cast_nullable_to_non_nullable
                      as String,
            amantaStart: null == amantaStart
                ? _value.amantaStart
                : amantaStart // ignore: cast_nullable_to_non_nullable
                      as String,
            amantaEnd: null == amantaEnd
                ? _value.amantaEnd
                : amantaEnd // ignore: cast_nullable_to_non_nullable
                      as String,
            adhikMaasa: null == adhikMaasa
                ? _value.adhikMaasa
                : adhikMaasa // ignore: cast_nullable_to_non_nullable
                      as bool,
            ayana: null == ayana
                ? _value.ayana
                : ayana // ignore: cast_nullable_to_non_nullable
                      as String,
            realAyana: null == realAyana
                ? _value.realAyana
                : realAyana // ignore: cast_nullable_to_non_nullable
                      as String,
            tamilMonthNum: null == tamilMonthNum
                ? _value.tamilMonthNum
                : tamilMonthNum // ignore: cast_nullable_to_non_nullable
                      as int,
            tamilMonth: null == tamilMonth
                ? _value.tamilMonth
                : tamilMonth // ignore: cast_nullable_to_non_nullable
                      as String,
            tamilDay: null == tamilDay
                ? _value.tamilDay
                : tamilDay // ignore: cast_nullable_to_non_nullable
                      as int,
            purnimantaDate: null == purnimantaDate
                ? _value.purnimantaDate
                : purnimantaDate // ignore: cast_nullable_to_non_nullable
                      as int,
            purnimantaNumber: null == purnimantaNumber
                ? _value.purnimantaNumber
                : purnimantaNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            purnimantaName: null == purnimantaName
                ? _value.purnimantaName
                : purnimantaName // ignore: cast_nullable_to_non_nullable
                      as String,
            alternatePurnimantaName: null == alternatePurnimantaName
                ? _value.alternatePurnimantaName
                : alternatePurnimantaName // ignore: cast_nullable_to_non_nullable
                      as String,
            purnimantaStart: null == purnimantaStart
                ? _value.purnimantaStart
                : purnimantaStart // ignore: cast_nullable_to_non_nullable
                      as String,
            purnimantaEnd: null == purnimantaEnd
                ? _value.purnimantaEnd
                : purnimantaEnd // ignore: cast_nullable_to_non_nullable
                      as String,
            moonPhase: null == moonPhase
                ? _value.moonPhase
                : moonPhase // ignore: cast_nullable_to_non_nullable
                      as String,
            paksha: null == paksha
                ? _value.paksha
                : paksha // ignore: cast_nullable_to_non_nullable
                      as String,
            ritu: null == ritu
                ? _value.ritu
                : ritu // ignore: cast_nullable_to_non_nullable
                      as String,
            rituTamil: null == rituTamil
                ? _value.rituTamil
                : rituTamil // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MasaModelImplCopyWith<$Res>
    implements $MasaModelCopyWith<$Res> {
  factory _$$MasaModelImplCopyWith(
    _$MasaModelImpl value,
    $Res Function(_$MasaModelImpl) then,
  ) = __$$MasaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'amanta_number') int amantaNumber,
    @JsonKey(name: 'amanta_date') int amantaDate,
    @JsonKey(name: 'amanta_name') String amantaName,
    @JsonKey(name: 'alternate_amanta_name') String alternateAmantaName,
    @JsonKey(name: 'amanta_start') String amantaStart,
    @JsonKey(name: 'amanta_end') String amantaEnd,
    @JsonKey(name: 'adhik_maasa') bool adhikMaasa,
    @JsonKey(name: 'ayana') String ayana,
    @JsonKey(name: 'real_ayana') String realAyana,
    @JsonKey(name: 'tamil_month_num') int tamilMonthNum,
    @JsonKey(name: 'tamil_month') String tamilMonth,
    @JsonKey(name: 'tamil_day') int tamilDay,
    @JsonKey(name: 'purnimanta_date') int purnimantaDate,
    @JsonKey(name: 'purnimanta_number') int purnimantaNumber,
    @JsonKey(name: 'purnimanta_name') String purnimantaName,
    @JsonKey(name: 'alternate_purnimanta_name') String alternatePurnimantaName,
    @JsonKey(name: 'purnimanta_start') String purnimantaStart,
    @JsonKey(name: 'purnimanta_end') String purnimantaEnd,
    @JsonKey(name: 'moon_phase') String moonPhase,
    @JsonKey(name: 'paksha') String paksha,
    @JsonKey(name: 'ritu') String ritu,
    @JsonKey(name: 'ritu_tamil') String rituTamil,
  });
}

/// @nodoc
class __$$MasaModelImplCopyWithImpl<$Res>
    extends _$MasaModelCopyWithImpl<$Res, _$MasaModelImpl>
    implements _$$MasaModelImplCopyWith<$Res> {
  __$$MasaModelImplCopyWithImpl(
    _$MasaModelImpl _value,
    $Res Function(_$MasaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amantaNumber = null,
    Object? amantaDate = null,
    Object? amantaName = null,
    Object? alternateAmantaName = null,
    Object? amantaStart = null,
    Object? amantaEnd = null,
    Object? adhikMaasa = null,
    Object? ayana = null,
    Object? realAyana = null,
    Object? tamilMonthNum = null,
    Object? tamilMonth = null,
    Object? tamilDay = null,
    Object? purnimantaDate = null,
    Object? purnimantaNumber = null,
    Object? purnimantaName = null,
    Object? alternatePurnimantaName = null,
    Object? purnimantaStart = null,
    Object? purnimantaEnd = null,
    Object? moonPhase = null,
    Object? paksha = null,
    Object? ritu = null,
    Object? rituTamil = null,
  }) {
    return _then(
      _$MasaModelImpl(
        amantaNumber: null == amantaNumber
            ? _value.amantaNumber
            : amantaNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        amantaDate: null == amantaDate
            ? _value.amantaDate
            : amantaDate // ignore: cast_nullable_to_non_nullable
                  as int,
        amantaName: null == amantaName
            ? _value.amantaName
            : amantaName // ignore: cast_nullable_to_non_nullable
                  as String,
        alternateAmantaName: null == alternateAmantaName
            ? _value.alternateAmantaName
            : alternateAmantaName // ignore: cast_nullable_to_non_nullable
                  as String,
        amantaStart: null == amantaStart
            ? _value.amantaStart
            : amantaStart // ignore: cast_nullable_to_non_nullable
                  as String,
        amantaEnd: null == amantaEnd
            ? _value.amantaEnd
            : amantaEnd // ignore: cast_nullable_to_non_nullable
                  as String,
        adhikMaasa: null == adhikMaasa
            ? _value.adhikMaasa
            : adhikMaasa // ignore: cast_nullable_to_non_nullable
                  as bool,
        ayana: null == ayana
            ? _value.ayana
            : ayana // ignore: cast_nullable_to_non_nullable
                  as String,
        realAyana: null == realAyana
            ? _value.realAyana
            : realAyana // ignore: cast_nullable_to_non_nullable
                  as String,
        tamilMonthNum: null == tamilMonthNum
            ? _value.tamilMonthNum
            : tamilMonthNum // ignore: cast_nullable_to_non_nullable
                  as int,
        tamilMonth: null == tamilMonth
            ? _value.tamilMonth
            : tamilMonth // ignore: cast_nullable_to_non_nullable
                  as String,
        tamilDay: null == tamilDay
            ? _value.tamilDay
            : tamilDay // ignore: cast_nullable_to_non_nullable
                  as int,
        purnimantaDate: null == purnimantaDate
            ? _value.purnimantaDate
            : purnimantaDate // ignore: cast_nullable_to_non_nullable
                  as int,
        purnimantaNumber: null == purnimantaNumber
            ? _value.purnimantaNumber
            : purnimantaNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        purnimantaName: null == purnimantaName
            ? _value.purnimantaName
            : purnimantaName // ignore: cast_nullable_to_non_nullable
                  as String,
        alternatePurnimantaName: null == alternatePurnimantaName
            ? _value.alternatePurnimantaName
            : alternatePurnimantaName // ignore: cast_nullable_to_non_nullable
                  as String,
        purnimantaStart: null == purnimantaStart
            ? _value.purnimantaStart
            : purnimantaStart // ignore: cast_nullable_to_non_nullable
                  as String,
        purnimantaEnd: null == purnimantaEnd
            ? _value.purnimantaEnd
            : purnimantaEnd // ignore: cast_nullable_to_non_nullable
                  as String,
        moonPhase: null == moonPhase
            ? _value.moonPhase
            : moonPhase // ignore: cast_nullable_to_non_nullable
                  as String,
        paksha: null == paksha
            ? _value.paksha
            : paksha // ignore: cast_nullable_to_non_nullable
                  as String,
        ritu: null == ritu
            ? _value.ritu
            : ritu // ignore: cast_nullable_to_non_nullable
                  as String,
        rituTamil: null == rituTamil
            ? _value.rituTamil
            : rituTamil // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MasaModelImpl extends _MasaModel {
  const _$MasaModelImpl({
    @JsonKey(name: 'amanta_number') required this.amantaNumber,
    @JsonKey(name: 'amanta_date') required this.amantaDate,
    @JsonKey(name: 'amanta_name') required this.amantaName,
    @JsonKey(name: 'alternate_amanta_name') required this.alternateAmantaName,
    @JsonKey(name: 'amanta_start') required this.amantaStart,
    @JsonKey(name: 'amanta_end') required this.amantaEnd,
    @JsonKey(name: 'adhik_maasa') required this.adhikMaasa,
    @JsonKey(name: 'ayana') required this.ayana,
    @JsonKey(name: 'real_ayana') required this.realAyana,
    @JsonKey(name: 'tamil_month_num') required this.tamilMonthNum,
    @JsonKey(name: 'tamil_month') required this.tamilMonth,
    @JsonKey(name: 'tamil_day') required this.tamilDay,
    @JsonKey(name: 'purnimanta_date') required this.purnimantaDate,
    @JsonKey(name: 'purnimanta_number') required this.purnimantaNumber,
    @JsonKey(name: 'purnimanta_name') required this.purnimantaName,
    @JsonKey(name: 'alternate_purnimanta_name')
    required this.alternatePurnimantaName,
    @JsonKey(name: 'purnimanta_start') required this.purnimantaStart,
    @JsonKey(name: 'purnimanta_end') required this.purnimantaEnd,
    @JsonKey(name: 'moon_phase') required this.moonPhase,
    @JsonKey(name: 'paksha') required this.paksha,
    @JsonKey(name: 'ritu') required this.ritu,
    @JsonKey(name: 'ritu_tamil') required this.rituTamil,
  }) : super._();

  factory _$MasaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasaModelImplFromJson(json);

  @override
  @JsonKey(name: 'amanta_number')
  final int amantaNumber;
  @override
  @JsonKey(name: 'amanta_date')
  final int amantaDate;
  @override
  @JsonKey(name: 'amanta_name')
  final String amantaName;
  @override
  @JsonKey(name: 'alternate_amanta_name')
  final String alternateAmantaName;
  @override
  @JsonKey(name: 'amanta_start')
  final String amantaStart;
  @override
  @JsonKey(name: 'amanta_end')
  final String amantaEnd;
  @override
  @JsonKey(name: 'adhik_maasa')
  final bool adhikMaasa;
  @override
  @JsonKey(name: 'ayana')
  final String ayana;
  @override
  @JsonKey(name: 'real_ayana')
  final String realAyana;
  @override
  @JsonKey(name: 'tamil_month_num')
  final int tamilMonthNum;
  @override
  @JsonKey(name: 'tamil_month')
  final String tamilMonth;
  @override
  @JsonKey(name: 'tamil_day')
  final int tamilDay;
  @override
  @JsonKey(name: 'purnimanta_date')
  final int purnimantaDate;
  @override
  @JsonKey(name: 'purnimanta_number')
  final int purnimantaNumber;
  @override
  @JsonKey(name: 'purnimanta_name')
  final String purnimantaName;
  @override
  @JsonKey(name: 'alternate_purnimanta_name')
  final String alternatePurnimantaName;
  @override
  @JsonKey(name: 'purnimanta_start')
  final String purnimantaStart;
  @override
  @JsonKey(name: 'purnimanta_end')
  final String purnimantaEnd;
  @override
  @JsonKey(name: 'moon_phase')
  final String moonPhase;
  @override
  @JsonKey(name: 'paksha')
  final String paksha;
  @override
  @JsonKey(name: 'ritu')
  final String ritu;
  @override
  @JsonKey(name: 'ritu_tamil')
  final String rituTamil;

  @override
  String toString() {
    return 'MasaModel(amantaNumber: $amantaNumber, amantaDate: $amantaDate, amantaName: $amantaName, alternateAmantaName: $alternateAmantaName, amantaStart: $amantaStart, amantaEnd: $amantaEnd, adhikMaasa: $adhikMaasa, ayana: $ayana, realAyana: $realAyana, tamilMonthNum: $tamilMonthNum, tamilMonth: $tamilMonth, tamilDay: $tamilDay, purnimantaDate: $purnimantaDate, purnimantaNumber: $purnimantaNumber, purnimantaName: $purnimantaName, alternatePurnimantaName: $alternatePurnimantaName, purnimantaStart: $purnimantaStart, purnimantaEnd: $purnimantaEnd, moonPhase: $moonPhase, paksha: $paksha, ritu: $ritu, rituTamil: $rituTamil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasaModelImpl &&
            (identical(other.amantaNumber, amantaNumber) ||
                other.amantaNumber == amantaNumber) &&
            (identical(other.amantaDate, amantaDate) ||
                other.amantaDate == amantaDate) &&
            (identical(other.amantaName, amantaName) ||
                other.amantaName == amantaName) &&
            (identical(other.alternateAmantaName, alternateAmantaName) ||
                other.alternateAmantaName == alternateAmantaName) &&
            (identical(other.amantaStart, amantaStart) ||
                other.amantaStart == amantaStart) &&
            (identical(other.amantaEnd, amantaEnd) ||
                other.amantaEnd == amantaEnd) &&
            (identical(other.adhikMaasa, adhikMaasa) ||
                other.adhikMaasa == adhikMaasa) &&
            (identical(other.ayana, ayana) || other.ayana == ayana) &&
            (identical(other.realAyana, realAyana) ||
                other.realAyana == realAyana) &&
            (identical(other.tamilMonthNum, tamilMonthNum) ||
                other.tamilMonthNum == tamilMonthNum) &&
            (identical(other.tamilMonth, tamilMonth) ||
                other.tamilMonth == tamilMonth) &&
            (identical(other.tamilDay, tamilDay) ||
                other.tamilDay == tamilDay) &&
            (identical(other.purnimantaDate, purnimantaDate) ||
                other.purnimantaDate == purnimantaDate) &&
            (identical(other.purnimantaNumber, purnimantaNumber) ||
                other.purnimantaNumber == purnimantaNumber) &&
            (identical(other.purnimantaName, purnimantaName) ||
                other.purnimantaName == purnimantaName) &&
            (identical(
                  other.alternatePurnimantaName,
                  alternatePurnimantaName,
                ) ||
                other.alternatePurnimantaName == alternatePurnimantaName) &&
            (identical(other.purnimantaStart, purnimantaStart) ||
                other.purnimantaStart == purnimantaStart) &&
            (identical(other.purnimantaEnd, purnimantaEnd) ||
                other.purnimantaEnd == purnimantaEnd) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.paksha, paksha) || other.paksha == paksha) &&
            (identical(other.ritu, ritu) || other.ritu == ritu) &&
            (identical(other.rituTamil, rituTamil) ||
                other.rituTamil == rituTamil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    amantaNumber,
    amantaDate,
    amantaName,
    alternateAmantaName,
    amantaStart,
    amantaEnd,
    adhikMaasa,
    ayana,
    realAyana,
    tamilMonthNum,
    tamilMonth,
    tamilDay,
    purnimantaDate,
    purnimantaNumber,
    purnimantaName,
    alternatePurnimantaName,
    purnimantaStart,
    purnimantaEnd,
    moonPhase,
    paksha,
    ritu,
    rituTamil,
  ]);

  /// Create a copy of MasaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasaModelImplCopyWith<_$MasaModelImpl> get copyWith =>
      __$$MasaModelImplCopyWithImpl<_$MasaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasaModelImplToJson(this);
  }
}

abstract class _MasaModel extends MasaModel {
  const factory _MasaModel({
    @JsonKey(name: 'amanta_number') required final int amantaNumber,
    @JsonKey(name: 'amanta_date') required final int amantaDate,
    @JsonKey(name: 'amanta_name') required final String amantaName,
    @JsonKey(name: 'alternate_amanta_name')
    required final String alternateAmantaName,
    @JsonKey(name: 'amanta_start') required final String amantaStart,
    @JsonKey(name: 'amanta_end') required final String amantaEnd,
    @JsonKey(name: 'adhik_maasa') required final bool adhikMaasa,
    @JsonKey(name: 'ayana') required final String ayana,
    @JsonKey(name: 'real_ayana') required final String realAyana,
    @JsonKey(name: 'tamil_month_num') required final int tamilMonthNum,
    @JsonKey(name: 'tamil_month') required final String tamilMonth,
    @JsonKey(name: 'tamil_day') required final int tamilDay,
    @JsonKey(name: 'purnimanta_date') required final int purnimantaDate,
    @JsonKey(name: 'purnimanta_number') required final int purnimantaNumber,
    @JsonKey(name: 'purnimanta_name') required final String purnimantaName,
    @JsonKey(name: 'alternate_purnimanta_name')
    required final String alternatePurnimantaName,
    @JsonKey(name: 'purnimanta_start') required final String purnimantaStart,
    @JsonKey(name: 'purnimanta_end') required final String purnimantaEnd,
    @JsonKey(name: 'moon_phase') required final String moonPhase,
    @JsonKey(name: 'paksha') required final String paksha,
    @JsonKey(name: 'ritu') required final String ritu,
    @JsonKey(name: 'ritu_tamil') required final String rituTamil,
  }) = _$MasaModelImpl;
  const _MasaModel._() : super._();

  factory _MasaModel.fromJson(Map<String, dynamic> json) =
      _$MasaModelImpl.fromJson;

  @override
  @JsonKey(name: 'amanta_number')
  int get amantaNumber;
  @override
  @JsonKey(name: 'amanta_date')
  int get amantaDate;
  @override
  @JsonKey(name: 'amanta_name')
  String get amantaName;
  @override
  @JsonKey(name: 'alternate_amanta_name')
  String get alternateAmantaName;
  @override
  @JsonKey(name: 'amanta_start')
  String get amantaStart;
  @override
  @JsonKey(name: 'amanta_end')
  String get amantaEnd;
  @override
  @JsonKey(name: 'adhik_maasa')
  bool get adhikMaasa;
  @override
  @JsonKey(name: 'ayana')
  String get ayana;
  @override
  @JsonKey(name: 'real_ayana')
  String get realAyana;
  @override
  @JsonKey(name: 'tamil_month_num')
  int get tamilMonthNum;
  @override
  @JsonKey(name: 'tamil_month')
  String get tamilMonth;
  @override
  @JsonKey(name: 'tamil_day')
  int get tamilDay;
  @override
  @JsonKey(name: 'purnimanta_date')
  int get purnimantaDate;
  @override
  @JsonKey(name: 'purnimanta_number')
  int get purnimantaNumber;
  @override
  @JsonKey(name: 'purnimanta_name')
  String get purnimantaName;
  @override
  @JsonKey(name: 'alternate_purnimanta_name')
  String get alternatePurnimantaName;
  @override
  @JsonKey(name: 'purnimanta_start')
  String get purnimantaStart;
  @override
  @JsonKey(name: 'purnimanta_end')
  String get purnimantaEnd;
  @override
  @JsonKey(name: 'moon_phase')
  String get moonPhase;
  @override
  @JsonKey(name: 'paksha')
  String get paksha;
  @override
  @JsonKey(name: 'ritu')
  String get ritu;
  @override
  @JsonKey(name: 'ritu_tamil')
  String get rituTamil;

  /// Create a copy of MasaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasaModelImplCopyWith<_$MasaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YearsModel _$YearsModelFromJson(Map<String, dynamic> json) {
  return _YearsModel.fromJson(json);
}

/// @nodoc
mixin _$YearsModel {
  @JsonKey(name: 'kali')
  int get kali => throw _privateConstructorUsedError;
  @JsonKey(name: 'saka')
  int get saka => throw _privateConstructorUsedError;
  @JsonKey(name: 'vikram_samvaat')
  int get vikramSamvaat => throw _privateConstructorUsedError;
  @JsonKey(name: 'kali_samvaat_number')
  int get kaliSamvaatNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'kali_samvaat_name')
  String get kaliSamvaatName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vikram_samvaat_number')
  int get vikramSamvaatNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'vikram_samvaat_name')
  String get vikramSamvaatName => throw _privateConstructorUsedError;
  @JsonKey(name: 'saka_samvaat_number')
  int get sakaSamvaatNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'saka_samvaat_name')
  String get sakaSamvaatName => throw _privateConstructorUsedError;

  /// Serializes this YearsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YearsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearsModelCopyWith<YearsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearsModelCopyWith<$Res> {
  factory $YearsModelCopyWith(
    YearsModel value,
    $Res Function(YearsModel) then,
  ) = _$YearsModelCopyWithImpl<$Res, YearsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'kali') int kali,
    @JsonKey(name: 'saka') int saka,
    @JsonKey(name: 'vikram_samvaat') int vikramSamvaat,
    @JsonKey(name: 'kali_samvaat_number') int kaliSamvaatNumber,
    @JsonKey(name: 'kali_samvaat_name') String kaliSamvaatName,
    @JsonKey(name: 'vikram_samvaat_number') int vikramSamvaatNumber,
    @JsonKey(name: 'vikram_samvaat_name') String vikramSamvaatName,
    @JsonKey(name: 'saka_samvaat_number') int sakaSamvaatNumber,
    @JsonKey(name: 'saka_samvaat_name') String sakaSamvaatName,
  });
}

/// @nodoc
class _$YearsModelCopyWithImpl<$Res, $Val extends YearsModel>
    implements $YearsModelCopyWith<$Res> {
  _$YearsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kali = null,
    Object? saka = null,
    Object? vikramSamvaat = null,
    Object? kaliSamvaatNumber = null,
    Object? kaliSamvaatName = null,
    Object? vikramSamvaatNumber = null,
    Object? vikramSamvaatName = null,
    Object? sakaSamvaatNumber = null,
    Object? sakaSamvaatName = null,
  }) {
    return _then(
      _value.copyWith(
            kali: null == kali
                ? _value.kali
                : kali // ignore: cast_nullable_to_non_nullable
                      as int,
            saka: null == saka
                ? _value.saka
                : saka // ignore: cast_nullable_to_non_nullable
                      as int,
            vikramSamvaat: null == vikramSamvaat
                ? _value.vikramSamvaat
                : vikramSamvaat // ignore: cast_nullable_to_non_nullable
                      as int,
            kaliSamvaatNumber: null == kaliSamvaatNumber
                ? _value.kaliSamvaatNumber
                : kaliSamvaatNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            kaliSamvaatName: null == kaliSamvaatName
                ? _value.kaliSamvaatName
                : kaliSamvaatName // ignore: cast_nullable_to_non_nullable
                      as String,
            vikramSamvaatNumber: null == vikramSamvaatNumber
                ? _value.vikramSamvaatNumber
                : vikramSamvaatNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            vikramSamvaatName: null == vikramSamvaatName
                ? _value.vikramSamvaatName
                : vikramSamvaatName // ignore: cast_nullable_to_non_nullable
                      as String,
            sakaSamvaatNumber: null == sakaSamvaatNumber
                ? _value.sakaSamvaatNumber
                : sakaSamvaatNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            sakaSamvaatName: null == sakaSamvaatName
                ? _value.sakaSamvaatName
                : sakaSamvaatName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$YearsModelImplCopyWith<$Res>
    implements $YearsModelCopyWith<$Res> {
  factory _$$YearsModelImplCopyWith(
    _$YearsModelImpl value,
    $Res Function(_$YearsModelImpl) then,
  ) = __$$YearsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'kali') int kali,
    @JsonKey(name: 'saka') int saka,
    @JsonKey(name: 'vikram_samvaat') int vikramSamvaat,
    @JsonKey(name: 'kali_samvaat_number') int kaliSamvaatNumber,
    @JsonKey(name: 'kali_samvaat_name') String kaliSamvaatName,
    @JsonKey(name: 'vikram_samvaat_number') int vikramSamvaatNumber,
    @JsonKey(name: 'vikram_samvaat_name') String vikramSamvaatName,
    @JsonKey(name: 'saka_samvaat_number') int sakaSamvaatNumber,
    @JsonKey(name: 'saka_samvaat_name') String sakaSamvaatName,
  });
}

/// @nodoc
class __$$YearsModelImplCopyWithImpl<$Res>
    extends _$YearsModelCopyWithImpl<$Res, _$YearsModelImpl>
    implements _$$YearsModelImplCopyWith<$Res> {
  __$$YearsModelImplCopyWithImpl(
    _$YearsModelImpl _value,
    $Res Function(_$YearsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of YearsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kali = null,
    Object? saka = null,
    Object? vikramSamvaat = null,
    Object? kaliSamvaatNumber = null,
    Object? kaliSamvaatName = null,
    Object? vikramSamvaatNumber = null,
    Object? vikramSamvaatName = null,
    Object? sakaSamvaatNumber = null,
    Object? sakaSamvaatName = null,
  }) {
    return _then(
      _$YearsModelImpl(
        kali: null == kali
            ? _value.kali
            : kali // ignore: cast_nullable_to_non_nullable
                  as int,
        saka: null == saka
            ? _value.saka
            : saka // ignore: cast_nullable_to_non_nullable
                  as int,
        vikramSamvaat: null == vikramSamvaat
            ? _value.vikramSamvaat
            : vikramSamvaat // ignore: cast_nullable_to_non_nullable
                  as int,
        kaliSamvaatNumber: null == kaliSamvaatNumber
            ? _value.kaliSamvaatNumber
            : kaliSamvaatNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        kaliSamvaatName: null == kaliSamvaatName
            ? _value.kaliSamvaatName
            : kaliSamvaatName // ignore: cast_nullable_to_non_nullable
                  as String,
        vikramSamvaatNumber: null == vikramSamvaatNumber
            ? _value.vikramSamvaatNumber
            : vikramSamvaatNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        vikramSamvaatName: null == vikramSamvaatName
            ? _value.vikramSamvaatName
            : vikramSamvaatName // ignore: cast_nullable_to_non_nullable
                  as String,
        sakaSamvaatNumber: null == sakaSamvaatNumber
            ? _value.sakaSamvaatNumber
            : sakaSamvaatNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        sakaSamvaatName: null == sakaSamvaatName
            ? _value.sakaSamvaatName
            : sakaSamvaatName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$YearsModelImpl extends _YearsModel {
  const _$YearsModelImpl({
    @JsonKey(name: 'kali') required this.kali,
    @JsonKey(name: 'saka') required this.saka,
    @JsonKey(name: 'vikram_samvaat') required this.vikramSamvaat,
    @JsonKey(name: 'kali_samvaat_number') required this.kaliSamvaatNumber,
    @JsonKey(name: 'kali_samvaat_name') required this.kaliSamvaatName,
    @JsonKey(name: 'vikram_samvaat_number') required this.vikramSamvaatNumber,
    @JsonKey(name: 'vikram_samvaat_name') required this.vikramSamvaatName,
    @JsonKey(name: 'saka_samvaat_number') required this.sakaSamvaatNumber,
    @JsonKey(name: 'saka_samvaat_name') required this.sakaSamvaatName,
  }) : super._();

  factory _$YearsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearsModelImplFromJson(json);

  @override
  @JsonKey(name: 'kali')
  final int kali;
  @override
  @JsonKey(name: 'saka')
  final int saka;
  @override
  @JsonKey(name: 'vikram_samvaat')
  final int vikramSamvaat;
  @override
  @JsonKey(name: 'kali_samvaat_number')
  final int kaliSamvaatNumber;
  @override
  @JsonKey(name: 'kali_samvaat_name')
  final String kaliSamvaatName;
  @override
  @JsonKey(name: 'vikram_samvaat_number')
  final int vikramSamvaatNumber;
  @override
  @JsonKey(name: 'vikram_samvaat_name')
  final String vikramSamvaatName;
  @override
  @JsonKey(name: 'saka_samvaat_number')
  final int sakaSamvaatNumber;
  @override
  @JsonKey(name: 'saka_samvaat_name')
  final String sakaSamvaatName;

  @override
  String toString() {
    return 'YearsModel(kali: $kali, saka: $saka, vikramSamvaat: $vikramSamvaat, kaliSamvaatNumber: $kaliSamvaatNumber, kaliSamvaatName: $kaliSamvaatName, vikramSamvaatNumber: $vikramSamvaatNumber, vikramSamvaatName: $vikramSamvaatName, sakaSamvaatNumber: $sakaSamvaatNumber, sakaSamvaatName: $sakaSamvaatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearsModelImpl &&
            (identical(other.kali, kali) || other.kali == kali) &&
            (identical(other.saka, saka) || other.saka == saka) &&
            (identical(other.vikramSamvaat, vikramSamvaat) ||
                other.vikramSamvaat == vikramSamvaat) &&
            (identical(other.kaliSamvaatNumber, kaliSamvaatNumber) ||
                other.kaliSamvaatNumber == kaliSamvaatNumber) &&
            (identical(other.kaliSamvaatName, kaliSamvaatName) ||
                other.kaliSamvaatName == kaliSamvaatName) &&
            (identical(other.vikramSamvaatNumber, vikramSamvaatNumber) ||
                other.vikramSamvaatNumber == vikramSamvaatNumber) &&
            (identical(other.vikramSamvaatName, vikramSamvaatName) ||
                other.vikramSamvaatName == vikramSamvaatName) &&
            (identical(other.sakaSamvaatNumber, sakaSamvaatNumber) ||
                other.sakaSamvaatNumber == sakaSamvaatNumber) &&
            (identical(other.sakaSamvaatName, sakaSamvaatName) ||
                other.sakaSamvaatName == sakaSamvaatName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    kali,
    saka,
    vikramSamvaat,
    kaliSamvaatNumber,
    kaliSamvaatName,
    vikramSamvaatNumber,
    vikramSamvaatName,
    sakaSamvaatNumber,
    sakaSamvaatName,
  );

  /// Create a copy of YearsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearsModelImplCopyWith<_$YearsModelImpl> get copyWith =>
      __$$YearsModelImplCopyWithImpl<_$YearsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearsModelImplToJson(this);
  }
}

abstract class _YearsModel extends YearsModel {
  const factory _YearsModel({
    @JsonKey(name: 'kali') required final int kali,
    @JsonKey(name: 'saka') required final int saka,
    @JsonKey(name: 'vikram_samvaat') required final int vikramSamvaat,
    @JsonKey(name: 'kali_samvaat_number') required final int kaliSamvaatNumber,
    @JsonKey(name: 'kali_samvaat_name') required final String kaliSamvaatName,
    @JsonKey(name: 'vikram_samvaat_number')
    required final int vikramSamvaatNumber,
    @JsonKey(name: 'vikram_samvaat_name')
    required final String vikramSamvaatName,
    @JsonKey(name: 'saka_samvaat_number') required final int sakaSamvaatNumber,
    @JsonKey(name: 'saka_samvaat_name') required final String sakaSamvaatName,
  }) = _$YearsModelImpl;
  const _YearsModel._() : super._();

  factory _YearsModel.fromJson(Map<String, dynamic> json) =
      _$YearsModelImpl.fromJson;

  @override
  @JsonKey(name: 'kali')
  int get kali;
  @override
  @JsonKey(name: 'saka')
  int get saka;
  @override
  @JsonKey(name: 'vikram_samvaat')
  int get vikramSamvaat;
  @override
  @JsonKey(name: 'kali_samvaat_number')
  int get kaliSamvaatNumber;
  @override
  @JsonKey(name: 'kali_samvaat_name')
  String get kaliSamvaatName;
  @override
  @JsonKey(name: 'vikram_samvaat_number')
  int get vikramSamvaatNumber;
  @override
  @JsonKey(name: 'vikram_samvaat_name')
  String get vikramSamvaatName;
  @override
  @JsonKey(name: 'saka_samvaat_number')
  int get sakaSamvaatNumber;
  @override
  @JsonKey(name: 'saka_samvaat_name')
  String get sakaSamvaatName;

  /// Create a copy of YearsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearsModelImplCopyWith<_$YearsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbhijitMuhurtaModel _$AbhijitMuhurtaModelFromJson(Map<String, dynamic> json) {
  return _AbhijitMuhurtaModel.fromJson(json);
}

/// @nodoc
mixin _$AbhijitMuhurtaModel {
  @JsonKey(name: 'start')
  String get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  String get end => throw _privateConstructorUsedError;

  /// Serializes this AbhijitMuhurtaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbhijitMuhurtaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbhijitMuhurtaModelCopyWith<AbhijitMuhurtaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbhijitMuhurtaModelCopyWith<$Res> {
  factory $AbhijitMuhurtaModelCopyWith(
    AbhijitMuhurtaModel value,
    $Res Function(AbhijitMuhurtaModel) then,
  ) = _$AbhijitMuhurtaModelCopyWithImpl<$Res, AbhijitMuhurtaModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'start') String start,
    @JsonKey(name: 'end') String end,
  });
}

/// @nodoc
class _$AbhijitMuhurtaModelCopyWithImpl<$Res, $Val extends AbhijitMuhurtaModel>
    implements $AbhijitMuhurtaModelCopyWith<$Res> {
  _$AbhijitMuhurtaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbhijitMuhurtaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? start = null, Object? end = null}) {
    return _then(
      _value.copyWith(
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as String,
            end: null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AbhijitMuhurtaModelImplCopyWith<$Res>
    implements $AbhijitMuhurtaModelCopyWith<$Res> {
  factory _$$AbhijitMuhurtaModelImplCopyWith(
    _$AbhijitMuhurtaModelImpl value,
    $Res Function(_$AbhijitMuhurtaModelImpl) then,
  ) = __$$AbhijitMuhurtaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'start') String start,
    @JsonKey(name: 'end') String end,
  });
}

/// @nodoc
class __$$AbhijitMuhurtaModelImplCopyWithImpl<$Res>
    extends _$AbhijitMuhurtaModelCopyWithImpl<$Res, _$AbhijitMuhurtaModelImpl>
    implements _$$AbhijitMuhurtaModelImplCopyWith<$Res> {
  __$$AbhijitMuhurtaModelImplCopyWithImpl(
    _$AbhijitMuhurtaModelImpl _value,
    $Res Function(_$AbhijitMuhurtaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AbhijitMuhurtaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? start = null, Object? end = null}) {
    return _then(
      _$AbhijitMuhurtaModelImpl(
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as String,
        end: null == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AbhijitMuhurtaModelImpl extends _AbhijitMuhurtaModel {
  const _$AbhijitMuhurtaModelImpl({
    @JsonKey(name: 'start') required this.start,
    @JsonKey(name: 'end') required this.end,
  }) : super._();

  factory _$AbhijitMuhurtaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbhijitMuhurtaModelImplFromJson(json);

  @override
  @JsonKey(name: 'start')
  final String start;
  @override
  @JsonKey(name: 'end')
  final String end;

  @override
  String toString() {
    return 'AbhijitMuhurtaModel(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbhijitMuhurtaModelImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of AbhijitMuhurtaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbhijitMuhurtaModelImplCopyWith<_$AbhijitMuhurtaModelImpl> get copyWith =>
      __$$AbhijitMuhurtaModelImplCopyWithImpl<_$AbhijitMuhurtaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AbhijitMuhurtaModelImplToJson(this);
  }
}

abstract class _AbhijitMuhurtaModel extends AbhijitMuhurtaModel {
  const factory _AbhijitMuhurtaModel({
    @JsonKey(name: 'start') required final String start,
    @JsonKey(name: 'end') required final String end,
  }) = _$AbhijitMuhurtaModelImpl;
  const _AbhijitMuhurtaModel._() : super._();

  factory _AbhijitMuhurtaModel.fromJson(Map<String, dynamic> json) =
      _$AbhijitMuhurtaModelImpl.fromJson;

  @override
  @JsonKey(name: 'start')
  String get start;
  @override
  @JsonKey(name: 'end')
  String get end;

  /// Create a copy of AbhijitMuhurtaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbhijitMuhurtaModelImplCopyWith<_$AbhijitMuhurtaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
