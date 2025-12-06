import 'package:freezed_annotation/freezed_annotation.dart';

part 'panchang_entity.freezed.dart';

/// Panchang entity (Domain layer)
///
/// Represents complete Panchang information for a specific date.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class PanchangEntity with _$PanchangEntity {
  const factory PanchangEntity({
    required DayEntity day,
    required TithiEntity tithi,
    required NakshatraEntity nakshatra,
    required KaranaEntity karana,
    required YogaEntity yoga,
    required AyanamsaEntity ayanamsa,
    required RasiEntity rasi,
    required SunPositionEntity sunPosition,
    required MoonPositionEntity moonPosition,
    required AdvancedDetailsEntity advancedDetails,
    required String rahukaal,
    required String gulika,
    required String yamakanta,
    required String date,
  }) = _PanchangEntity;
}

/// Day entity
@freezed
class DayEntity with _$DayEntity {
  const factory DayEntity({
    required String name,
  }) = _DayEntity;
}

/// Tithi entity
@freezed
class TithiEntity with _$TithiEntity {
  const factory TithiEntity({
    required String name,
    required int number,
    required String nextTithi,
    required String type,
    required String diety,
    required DateTime start,
    required DateTime end,
    required String meaning,
    required String special,
  }) = _TithiEntity;
}

/// Nakshatra entity
@freezed
class NakshatraEntity with _$NakshatraEntity {
  const factory NakshatraEntity({
    required String name,
    required int number,
    required String lord,
    required String diety,
    required DateTime start,
    required String nextNakshatra,
    required DateTime end,
    required List<String> auspiciousDisha,
    required String meaning,
    required String special,
    required String summary,
  }) = _NakshatraEntity;
}

/// Karana entity
@freezed
class KaranaEntity with _$KaranaEntity {
  const factory KaranaEntity({
    required String name,
    required int number,
    required String type,
    required String lord,
    required String diety,
    required DateTime start,
    required DateTime end,
    required String special,
    required String nextKarana,
  }) = _KaranaEntity;
}

/// Yoga entity
@freezed
class YogaEntity with _$YogaEntity {
  const factory YogaEntity({
    required String name,
    required int number,
    required DateTime start,
    required DateTime end,
    required String nextYoga,
    required String meaning,
    required String special,
  }) = _YogaEntity;
}

/// Ayanamsa entity
@freezed
class AyanamsaEntity with _$AyanamsaEntity {
  const factory AyanamsaEntity({
    required String name,
  }) = _AyanamsaEntity;
}

/// Rasi entity
@freezed
class RasiEntity with _$RasiEntity {
  const factory RasiEntity({
    required String name,
  }) = _RasiEntity;
}

/// Sun position entity
@freezed
class SunPositionEntity with _$SunPositionEntity {
  const factory SunPositionEntity({
    required String zodiac,
    required String nakshatra,
    required int rasiNo,
    required int nakshatraNo,
    required double sunDegreeAtRise,
  }) = _SunPositionEntity;
}

/// Moon position entity
@freezed
class MoonPositionEntity with _$MoonPositionEntity {
  const factory MoonPositionEntity({
    required double moonDegree,
  }) = _MoonPositionEntity;
}

/// Advanced details entity
@freezed
class AdvancedDetailsEntity with _$AdvancedDetailsEntity {
  const factory AdvancedDetailsEntity({
    required String sunRise,
    required String sunSet,
    required String moonRise,
    required String moonSet,
    required String nextFullMoon,
    required String nextNewMoon,
    required MasaEntity masa,
    required String moonYoginiNivas,
    required double ahargana,
    required YearsEntity years,
    required String vaara,
    required String dishaShool,
    required AbhijitMuhurtaEntity abhijitMuhurta,
  }) = _AdvancedDetailsEntity;
}

/// Masa entity
@freezed
class MasaEntity with _$MasaEntity {
  const factory MasaEntity({
    required int amantaNumber,
    required int amantaDate,
    required String amantaName,
    required String alternateAmantaName,
    required String amantaStart,
    required String amantaEnd,
    required bool adhikMaasa,
    required String ayana,
    required String realAyana,
    required int tamilMonthNum,
    required String tamilMonth,
    required int tamilDay,
    required int purnimantaDate,
    required int purnimantaNumber,
    required String purnimantaName,
    required String alternatePurnimantaName,
    required String purnimantaStart,
    required String purnimantaEnd,
    required String moonPhase,
    required String paksha,
    required String ritu,
    required String rituTamil,
  }) = _MasaEntity;
}

/// Years entity
@freezed
class YearsEntity with _$YearsEntity {
  const factory YearsEntity({
    required int kali,
    required int saka,
    required int vikramSamvaat,
    required int kaliSamvaatNumber,
    required String kaliSamvaatName,
    required int vikramSamvaatNumber,
    required String vikramSamvaatName,
    required int sakaSamvaatNumber,
    required String sakaSamvaatName,
  }) = _YearsEntity;
}

/// Abhijit Muhurta entity
@freezed
class AbhijitMuhurtaEntity with _$AbhijitMuhurtaEntity {
  const factory AbhijitMuhurtaEntity({
    required String start,
    required String end,
  }) = _AbhijitMuhurtaEntity;
}

