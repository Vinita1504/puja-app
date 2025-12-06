import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/panchang_entity.dart';

part 'panchang_model.freezed.dart';
part 'panchang_model.g.dart';

/// Panchang model (Data layer)
///
/// Data transfer object for Panchang information.
@freezed
class PanchangModel with _$PanchangModel {
  const factory PanchangModel({
    @JsonKey(name: 'day') required DayModel day,
    @JsonKey(name: 'tithi') required TithiModel tithi,
    @JsonKey(name: 'nakshatra') required NakshatraModel nakshatra,
    @JsonKey(name: 'karana') required KaranaModel karana,
    @JsonKey(name: 'yoga') required YogaModel yoga,
    @JsonKey(name: 'ayanamsa') required AyanamsaModel ayanamsa,
    @JsonKey(name: 'rasi') required RasiModel rasi,
    @JsonKey(name: 'sun_position') required SunPositionModel sunPosition,
    @JsonKey(name: 'moon_position') required MoonPositionModel moonPosition,
    @JsonKey(name: 'advanced_details')
    required AdvancedDetailsModel advancedDetails,
    @JsonKey(name: 'rahukaal') required String rahukaal,
    @JsonKey(name: 'gulika') required String gulika,
    @JsonKey(name: 'yamakanta') required String yamakanta,
    @JsonKey(name: 'date') required String date,
  }) = _PanchangModel;

  const PanchangModel._();

  factory PanchangModel.fromJson(Map<String, dynamic> json) =>
      _$PanchangModelFromJson(json);

  /// Convert to entity (Domain layer)
  PanchangEntity toEntity() {
    return PanchangEntity(
      day: day.toEntity(),
      tithi: tithi.toEntity(),
      nakshatra: nakshatra.toEntity(),
      karana: karana.toEntity(),
      yoga: yoga.toEntity(),
      ayanamsa: ayanamsa.toEntity(),
      rasi: rasi.toEntity(),
      sunPosition: sunPosition.toEntity(),
      moonPosition: moonPosition.toEntity(),
      advancedDetails: advancedDetails.toEntity(),
      rahukaal: rahukaal,
      gulika: gulika,
      yamakanta: yamakanta,
      date: date,
    );
  }
}

/// Day model
@freezed
class DayModel with _$DayModel {
  const factory DayModel({
    @JsonKey(name: 'name') required String name,
  }) = _DayModel;

  const DayModel._();

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);

  DayEntity toEntity() {
    return DayEntity(name: name);
  }
}

/// Tithi model
@freezed
class TithiModel with _$TithiModel {
  const factory TithiModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required int number,
    @JsonKey(name: 'next_tithi') required String nextTithi,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'diety') required String diety,
    @JsonKey(name: 'start') required DateTime start,
    @JsonKey(name: 'end') required DateTime end,
    @JsonKey(name: 'meaning') required String meaning,
    @JsonKey(name: 'special') required String special,
  }) = _TithiModel;

  const TithiModel._();

  factory TithiModel.fromJson(Map<String, dynamic> json) =>
      _$TithiModelFromJson(json);

  TithiEntity toEntity() {
    return TithiEntity(
      name: name,
      number: number,
      nextTithi: nextTithi,
      type: type,
      diety: diety,
      start: start,
      end: end,
      meaning: meaning,
      special: special,
    );
  }
}

/// Nakshatra model
@freezed
class NakshatraModel with _$NakshatraModel {
  const factory NakshatraModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required int number,
    @JsonKey(name: 'lord') required String lord,
    @JsonKey(name: 'diety') required String diety,
    @JsonKey(name: 'start') required DateTime start,
    @JsonKey(name: 'next_nakshatra') required String nextNakshatra,
    @JsonKey(name: 'end') required DateTime end,
    @JsonKey(name: 'auspicious_disha')
    required List<String> auspiciousDisha,
    @JsonKey(name: 'meaning') required String meaning,
    @JsonKey(name: 'special') required String special,
    @JsonKey(name: 'summary') required String summary,
  }) = _NakshatraModel;

  const NakshatraModel._();

  factory NakshatraModel.fromJson(Map<String, dynamic> json) =>
      _$NakshatraModelFromJson(json);

  NakshatraEntity toEntity() {
    return NakshatraEntity(
      name: name,
      number: number,
      lord: lord,
      diety: diety,
      start: start,
      nextNakshatra: nextNakshatra,
      end: end,
      auspiciousDisha: auspiciousDisha,
      meaning: meaning,
      special: special,
      summary: summary,
    );
  }
}

/// Karana model
@freezed
class KaranaModel with _$KaranaModel {
  const factory KaranaModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required int number,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'lord') required String lord,
    @JsonKey(name: 'diety') required String diety,
    @JsonKey(name: 'start') required DateTime start,
    @JsonKey(name: 'end') required DateTime end,
    @JsonKey(name: 'special') required String special,
    @JsonKey(name: 'next_karana') required String nextKarana,
  }) = _KaranaModel;

  const KaranaModel._();

  factory KaranaModel.fromJson(Map<String, dynamic> json) =>
      _$KaranaModelFromJson(json);

  KaranaEntity toEntity() {
    return KaranaEntity(
      name: name,
      number: number,
      type: type,
      lord: lord,
      diety: diety,
      start: start,
      end: end,
      special: special,
      nextKarana: nextKarana,
    );
  }
}

/// Yoga model
@freezed
class YogaModel with _$YogaModel {
  const factory YogaModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required int number,
    @JsonKey(name: 'start') required DateTime start,
    @JsonKey(name: 'end') required DateTime end,
    @JsonKey(name: 'next_yoga') required String nextYoga,
    @JsonKey(name: 'meaning') required String meaning,
    @JsonKey(name: 'special') required String special,
  }) = _YogaModel;

  const YogaModel._();

  factory YogaModel.fromJson(Map<String, dynamic> json) =>
      _$YogaModelFromJson(json);

  YogaEntity toEntity() {
    return YogaEntity(
      name: name,
      number: number,
      start: start,
      end: end,
      nextYoga: nextYoga,
      meaning: meaning,
      special: special,
    );
  }
}

/// Ayanamsa model
@freezed
class AyanamsaModel with _$AyanamsaModel {
  const factory AyanamsaModel({
    @JsonKey(name: 'name') required String name,
  }) = _AyanamsaModel;

  const AyanamsaModel._();

  factory AyanamsaModel.fromJson(Map<String, dynamic> json) =>
      _$AyanamsaModelFromJson(json);

  AyanamsaEntity toEntity() {
    return AyanamsaEntity(name: name);
  }
}

/// Rasi model
@freezed
class RasiModel with _$RasiModel {
  const factory RasiModel({
    @JsonKey(name: 'name') required String name,
  }) = _RasiModel;

  const RasiModel._();

  factory RasiModel.fromJson(Map<String, dynamic> json) =>
      _$RasiModelFromJson(json);

  RasiEntity toEntity() {
    return RasiEntity(name: name);
  }
}

/// Sun position model
@freezed
class SunPositionModel with _$SunPositionModel {
  const factory SunPositionModel({
    @JsonKey(name: 'zodiac') required String zodiac,
    @JsonKey(name: 'nakshatra') required String nakshatra,
    @JsonKey(name: 'rasi_no') required int rasiNo,
    @JsonKey(name: 'nakshatra_no') required int nakshatraNo,
    @JsonKey(name: 'sun_degree_at_rise') required double sunDegreeAtRise,
  }) = _SunPositionModel;

  const SunPositionModel._();

  factory SunPositionModel.fromJson(Map<String, dynamic> json) =>
      _$SunPositionModelFromJson(json);

  SunPositionEntity toEntity() {
    return SunPositionEntity(
      zodiac: zodiac,
      nakshatra: nakshatra,
      rasiNo: rasiNo,
      nakshatraNo: nakshatraNo,
      sunDegreeAtRise: sunDegreeAtRise,
    );
  }
}

/// Moon position model
@freezed
class MoonPositionModel with _$MoonPositionModel {
  const factory MoonPositionModel({
    @JsonKey(name: 'moon_degree') required double moonDegree,
  }) = _MoonPositionModel;

  const MoonPositionModel._();

  factory MoonPositionModel.fromJson(Map<String, dynamic> json) =>
      _$MoonPositionModelFromJson(json);

  MoonPositionEntity toEntity() {
    return MoonPositionEntity(moonDegree: moonDegree);
  }
}

/// Advanced details model
@freezed
class AdvancedDetailsModel with _$AdvancedDetailsModel {
  const factory AdvancedDetailsModel({
    @JsonKey(name: 'sun_rise') required String sunRise,
    @JsonKey(name: 'sun_set') required String sunSet,
    @JsonKey(name: 'moon_rise') required String moonRise,
    @JsonKey(name: 'moon_set') required String moonSet,
    @JsonKey(name: 'next_full_moon') required String nextFullMoon,
    @JsonKey(name: 'next_new_moon') required String nextNewMoon,
    @JsonKey(name: 'masa') required MasaModel masa,
    @JsonKey(name: 'moon_yogini_nivas') required String moonYoginiNivas,
    @JsonKey(name: 'ahargana') required double ahargana,
    @JsonKey(name: 'years') required YearsModel years,
    @JsonKey(name: 'vaara') required String vaara,
    @JsonKey(name: 'disha_shool') required String dishaShool,
    @JsonKey(name: 'abhijit_muhurta') required AbhijitMuhurtaModel abhijitMuhurta,
  }) = _AdvancedDetailsModel;

  const AdvancedDetailsModel._();

  factory AdvancedDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AdvancedDetailsModelFromJson(json);

  AdvancedDetailsEntity toEntity() {
    return AdvancedDetailsEntity(
      sunRise: sunRise,
      sunSet: sunSet,
      moonRise: moonRise,
      moonSet: moonSet,
      nextFullMoon: nextFullMoon,
      nextNewMoon: nextNewMoon,
      masa: masa.toEntity(),
      moonYoginiNivas: moonYoginiNivas,
      ahargana: ahargana,
      years: years.toEntity(),
      vaara: vaara,
      dishaShool: dishaShool,
      abhijitMuhurta: abhijitMuhurta.toEntity(),
    );
  }
}

/// Masa model
@freezed
class MasaModel with _$MasaModel {
  const factory MasaModel({
    @JsonKey(name: 'amanta_number') required int amantaNumber,
    @JsonKey(name: 'amanta_date') required int amantaDate,
    @JsonKey(name: 'amanta_name') required String amantaName,
    @JsonKey(name: 'alternate_amanta_name') required String alternateAmantaName,
    @JsonKey(name: 'amanta_start') required String amantaStart,
    @JsonKey(name: 'amanta_end') required String amantaEnd,
    @JsonKey(name: 'adhik_maasa') required bool adhikMaasa,
    @JsonKey(name: 'ayana') required String ayana,
    @JsonKey(name: 'real_ayana') required String realAyana,
    @JsonKey(name: 'tamil_month_num') required int tamilMonthNum,
    @JsonKey(name: 'tamil_month') required String tamilMonth,
    @JsonKey(name: 'tamil_day') required int tamilDay,
    @JsonKey(name: 'purnimanta_date') required int purnimantaDate,
    @JsonKey(name: 'purnimanta_number') required int purnimantaNumber,
    @JsonKey(name: 'purnimanta_name') required String purnimantaName,
    @JsonKey(name: 'alternate_purnimanta_name')
    required String alternatePurnimantaName,
    @JsonKey(name: 'purnimanta_start') required String purnimantaStart,
    @JsonKey(name: 'purnimanta_end') required String purnimantaEnd,
    @JsonKey(name: 'moon_phase') required String moonPhase,
    @JsonKey(name: 'paksha') required String paksha,
    @JsonKey(name: 'ritu') required String ritu,
    @JsonKey(name: 'ritu_tamil') required String rituTamil,
  }) = _MasaModel;

  const MasaModel._();

  factory MasaModel.fromJson(Map<String, dynamic> json) =>
      _$MasaModelFromJson(json);

  MasaEntity toEntity() {
    return MasaEntity(
      amantaNumber: amantaNumber,
      amantaDate: amantaDate,
      amantaName: amantaName,
      alternateAmantaName: alternateAmantaName,
      amantaStart: amantaStart,
      amantaEnd: amantaEnd,
      adhikMaasa: adhikMaasa,
      ayana: ayana,
      realAyana: realAyana,
      tamilMonthNum: tamilMonthNum,
      tamilMonth: tamilMonth,
      tamilDay: tamilDay,
      purnimantaDate: purnimantaDate,
      purnimantaNumber: purnimantaNumber,
      purnimantaName: purnimantaName,
      alternatePurnimantaName: alternatePurnimantaName,
      purnimantaStart: purnimantaStart,
      purnimantaEnd: purnimantaEnd,
      moonPhase: moonPhase,
      paksha: paksha,
      ritu: ritu,
      rituTamil: rituTamil,
    );
  }
}

/// Years model
@freezed
class YearsModel with _$YearsModel {
  const factory YearsModel({
    @JsonKey(name: 'kali') required int kali,
    @JsonKey(name: 'saka') required int saka,
    @JsonKey(name: 'vikram_samvaat') required int vikramSamvaat,
    @JsonKey(name: 'kali_samvaat_number') required int kaliSamvaatNumber,
    @JsonKey(name: 'kali_samvaat_name') required String kaliSamvaatName,
    @JsonKey(name: 'vikram_samvaat_number') required int vikramSamvaatNumber,
    @JsonKey(name: 'vikram_samvaat_name') required String vikramSamvaatName,
    @JsonKey(name: 'saka_samvaat_number') required int sakaSamvaatNumber,
    @JsonKey(name: 'saka_samvaat_name') required String sakaSamvaatName,
  }) = _YearsModel;

  const YearsModel._();

  factory YearsModel.fromJson(Map<String, dynamic> json) =>
      _$YearsModelFromJson(json);

  YearsEntity toEntity() {
    return YearsEntity(
      kali: kali,
      saka: saka,
      vikramSamvaat: vikramSamvaat,
      kaliSamvaatNumber: kaliSamvaatNumber,
      kaliSamvaatName: kaliSamvaatName,
      vikramSamvaatNumber: vikramSamvaatNumber,
      vikramSamvaatName: vikramSamvaatName,
      sakaSamvaatNumber: sakaSamvaatNumber,
      sakaSamvaatName: sakaSamvaatName,
    );
  }
}

/// Abhijit Muhurta model
@freezed
class AbhijitMuhurtaModel with _$AbhijitMuhurtaModel {
  const factory AbhijitMuhurtaModel({
    @JsonKey(name: 'start') required String start,
    @JsonKey(name: 'end') required String end,
  }) = _AbhijitMuhurtaModel;

  const AbhijitMuhurtaModel._();

  factory AbhijitMuhurtaModel.fromJson(Map<String, dynamic> json) =>
      _$AbhijitMuhurtaModelFromJson(json);

  AbhijitMuhurtaEntity toEntity() {
    return AbhijitMuhurtaEntity(start: start, end: end);
  }
}

