// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panchang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PanchangModelImpl _$$PanchangModelImplFromJson(
  Map<String, dynamic> json,
) => _$PanchangModelImpl(
  day: DayModel.fromJson(json['day'] as Map<String, dynamic>),
  tithi: TithiModel.fromJson(json['tithi'] as Map<String, dynamic>),
  nakshatra: NakshatraModel.fromJson(json['nakshatra'] as Map<String, dynamic>),
  karana: KaranaModel.fromJson(json['karana'] as Map<String, dynamic>),
  yoga: YogaModel.fromJson(json['yoga'] as Map<String, dynamic>),
  ayanamsa: AyanamsaModel.fromJson(json['ayanamsa'] as Map<String, dynamic>),
  rasi: RasiModel.fromJson(json['rasi'] as Map<String, dynamic>),
  sunPosition: SunPositionModel.fromJson(
    json['sun_position'] as Map<String, dynamic>,
  ),
  moonPosition: MoonPositionModel.fromJson(
    json['moon_position'] as Map<String, dynamic>,
  ),
  advancedDetails: AdvancedDetailsModel.fromJson(
    json['advanced_details'] as Map<String, dynamic>,
  ),
  rahukaal: json['rahukaal'] as String,
  gulika: json['gulika'] as String,
  yamakanta: json['yamakanta'] as String,
  date: json['date'] as String,
);

Map<String, dynamic> _$$PanchangModelImplToJson(_$PanchangModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day.toJson(),
      'tithi': instance.tithi.toJson(),
      'nakshatra': instance.nakshatra.toJson(),
      'karana': instance.karana.toJson(),
      'yoga': instance.yoga.toJson(),
      'ayanamsa': instance.ayanamsa.toJson(),
      'rasi': instance.rasi.toJson(),
      'sun_position': instance.sunPosition.toJson(),
      'moon_position': instance.moonPosition.toJson(),
      'advanced_details': instance.advancedDetails.toJson(),
      'rahukaal': instance.rahukaal,
      'gulika': instance.gulika,
      'yamakanta': instance.yamakanta,
      'date': instance.date,
    };

_$DayModelImpl _$$DayModelImplFromJson(Map<String, dynamic> json) =>
    _$DayModelImpl(name: json['name'] as String);

Map<String, dynamic> _$$DayModelImplToJson(_$DayModelImpl instance) =>
    <String, dynamic>{'name': instance.name};

_$TithiModelImpl _$$TithiModelImplFromJson(Map<String, dynamic> json) =>
    _$TithiModelImpl(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      nextTithi: json['next_tithi'] as String,
      type: json['type'] as String,
      diety: json['diety'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      meaning: json['meaning'] as String,
      special: json['special'] as String,
    );

Map<String, dynamic> _$$TithiModelImplToJson(_$TithiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'next_tithi': instance.nextTithi,
      'type': instance.type,
      'diety': instance.diety,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'meaning': instance.meaning,
      'special': instance.special,
    };

_$NakshatraModelImpl _$$NakshatraModelImplFromJson(Map<String, dynamic> json) =>
    _$NakshatraModelImpl(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      lord: json['lord'] as String,
      diety: json['diety'] as String,
      start: DateTime.parse(json['start'] as String),
      nextNakshatra: json['next_nakshatra'] as String,
      end: DateTime.parse(json['end'] as String),
      auspiciousDisha: (json['auspicious_disha'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      meaning: json['meaning'] as String,
      special: json['special'] as String,
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$NakshatraModelImplToJson(
  _$NakshatraModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'number': instance.number,
  'lord': instance.lord,
  'diety': instance.diety,
  'start': instance.start.toIso8601String(),
  'next_nakshatra': instance.nextNakshatra,
  'end': instance.end.toIso8601String(),
  'auspicious_disha': instance.auspiciousDisha,
  'meaning': instance.meaning,
  'special': instance.special,
  'summary': instance.summary,
};

_$KaranaModelImpl _$$KaranaModelImplFromJson(Map<String, dynamic> json) =>
    _$KaranaModelImpl(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      type: json['type'] as String,
      lord: json['lord'] as String,
      diety: json['diety'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      special: json['special'] as String,
      nextKarana: json['next_karana'] as String,
    );

Map<String, dynamic> _$$KaranaModelImplToJson(_$KaranaModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'type': instance.type,
      'lord': instance.lord,
      'diety': instance.diety,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'special': instance.special,
      'next_karana': instance.nextKarana,
    };

_$YogaModelImpl _$$YogaModelImplFromJson(Map<String, dynamic> json) =>
    _$YogaModelImpl(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      nextYoga: json['next_yoga'] as String,
      meaning: json['meaning'] as String,
      special: json['special'] as String,
    );

Map<String, dynamic> _$$YogaModelImplToJson(_$YogaModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'next_yoga': instance.nextYoga,
      'meaning': instance.meaning,
      'special': instance.special,
    };

_$AyanamsaModelImpl _$$AyanamsaModelImplFromJson(Map<String, dynamic> json) =>
    _$AyanamsaModelImpl(name: json['name'] as String);

Map<String, dynamic> _$$AyanamsaModelImplToJson(_$AyanamsaModelImpl instance) =>
    <String, dynamic>{'name': instance.name};

_$RasiModelImpl _$$RasiModelImplFromJson(Map<String, dynamic> json) =>
    _$RasiModelImpl(name: json['name'] as String);

Map<String, dynamic> _$$RasiModelImplToJson(_$RasiModelImpl instance) =>
    <String, dynamic>{'name': instance.name};

_$SunPositionModelImpl _$$SunPositionModelImplFromJson(
  Map<String, dynamic> json,
) => _$SunPositionModelImpl(
  zodiac: json['zodiac'] as String,
  nakshatra: json['nakshatra'] as String,
  rasiNo: (json['rasi_no'] as num).toInt(),
  nakshatraNo: (json['nakshatra_no'] as num).toInt(),
  sunDegreeAtRise: (json['sun_degree_at_rise'] as num).toDouble(),
);

Map<String, dynamic> _$$SunPositionModelImplToJson(
  _$SunPositionModelImpl instance,
) => <String, dynamic>{
  'zodiac': instance.zodiac,
  'nakshatra': instance.nakshatra,
  'rasi_no': instance.rasiNo,
  'nakshatra_no': instance.nakshatraNo,
  'sun_degree_at_rise': instance.sunDegreeAtRise,
};

_$MoonPositionModelImpl _$$MoonPositionModelImplFromJson(
  Map<String, dynamic> json,
) => _$MoonPositionModelImpl(
  moonDegree: (json['moon_degree'] as num).toDouble(),
);

Map<String, dynamic> _$$MoonPositionModelImplToJson(
  _$MoonPositionModelImpl instance,
) => <String, dynamic>{'moon_degree': instance.moonDegree};

_$AdvancedDetailsModelImpl _$$AdvancedDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$AdvancedDetailsModelImpl(
  sunRise: json['sun_rise'] as String,
  sunSet: json['sun_set'] as String,
  moonRise: json['moon_rise'] as String,
  moonSet: json['moon_set'] as String,
  nextFullMoon: json['next_full_moon'] as String,
  nextNewMoon: json['next_new_moon'] as String,
  masa: MasaModel.fromJson(json['masa'] as Map<String, dynamic>),
  moonYoginiNivas: json['moon_yogini_nivas'] as String,
  ahargana: (json['ahargana'] as num).toDouble(),
  years: YearsModel.fromJson(json['years'] as Map<String, dynamic>),
  vaara: json['vaara'] as String,
  dishaShool: json['disha_shool'] as String,
  abhijitMuhurta: AbhijitMuhurtaModel.fromJson(
    json['abhijit_muhurta'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$AdvancedDetailsModelImplToJson(
  _$AdvancedDetailsModelImpl instance,
) => <String, dynamic>{
  'sun_rise': instance.sunRise,
  'sun_set': instance.sunSet,
  'moon_rise': instance.moonRise,
  'moon_set': instance.moonSet,
  'next_full_moon': instance.nextFullMoon,
  'next_new_moon': instance.nextNewMoon,
  'masa': instance.masa.toJson(),
  'moon_yogini_nivas': instance.moonYoginiNivas,
  'ahargana': instance.ahargana,
  'years': instance.years.toJson(),
  'vaara': instance.vaara,
  'disha_shool': instance.dishaShool,
  'abhijit_muhurta': instance.abhijitMuhurta.toJson(),
};

_$MasaModelImpl _$$MasaModelImplFromJson(Map<String, dynamic> json) =>
    _$MasaModelImpl(
      amantaNumber: (json['amanta_number'] as num).toInt(),
      amantaDate: (json['amanta_date'] as num).toInt(),
      amantaName: json['amanta_name'] as String,
      alternateAmantaName: json['alternate_amanta_name'] as String,
      amantaStart: json['amanta_start'] as String,
      amantaEnd: json['amanta_end'] as String,
      adhikMaasa: json['adhik_maasa'] as bool,
      ayana: json['ayana'] as String,
      realAyana: json['real_ayana'] as String,
      tamilMonthNum: (json['tamil_month_num'] as num).toInt(),
      tamilMonth: json['tamil_month'] as String,
      tamilDay: (json['tamil_day'] as num).toInt(),
      purnimantaDate: (json['purnimanta_date'] as num).toInt(),
      purnimantaNumber: (json['purnimanta_number'] as num).toInt(),
      purnimantaName: json['purnimanta_name'] as String,
      alternatePurnimantaName: json['alternate_purnimanta_name'] as String,
      purnimantaStart: json['purnimanta_start'] as String,
      purnimantaEnd: json['purnimanta_end'] as String,
      moonPhase: json['moon_phase'] as String,
      paksha: json['paksha'] as String,
      ritu: json['ritu'] as String,
      rituTamil: json['ritu_tamil'] as String,
    );

Map<String, dynamic> _$$MasaModelImplToJson(_$MasaModelImpl instance) =>
    <String, dynamic>{
      'amanta_number': instance.amantaNumber,
      'amanta_date': instance.amantaDate,
      'amanta_name': instance.amantaName,
      'alternate_amanta_name': instance.alternateAmantaName,
      'amanta_start': instance.amantaStart,
      'amanta_end': instance.amantaEnd,
      'adhik_maasa': instance.adhikMaasa,
      'ayana': instance.ayana,
      'real_ayana': instance.realAyana,
      'tamil_month_num': instance.tamilMonthNum,
      'tamil_month': instance.tamilMonth,
      'tamil_day': instance.tamilDay,
      'purnimanta_date': instance.purnimantaDate,
      'purnimanta_number': instance.purnimantaNumber,
      'purnimanta_name': instance.purnimantaName,
      'alternate_purnimanta_name': instance.alternatePurnimantaName,
      'purnimanta_start': instance.purnimantaStart,
      'purnimanta_end': instance.purnimantaEnd,
      'moon_phase': instance.moonPhase,
      'paksha': instance.paksha,
      'ritu': instance.ritu,
      'ritu_tamil': instance.rituTamil,
    };

_$YearsModelImpl _$$YearsModelImplFromJson(Map<String, dynamic> json) =>
    _$YearsModelImpl(
      kali: (json['kali'] as num).toInt(),
      saka: (json['saka'] as num).toInt(),
      vikramSamvaat: (json['vikram_samvaat'] as num).toInt(),
      kaliSamvaatNumber: (json['kali_samvaat_number'] as num).toInt(),
      kaliSamvaatName: json['kali_samvaat_name'] as String,
      vikramSamvaatNumber: (json['vikram_samvaat_number'] as num).toInt(),
      vikramSamvaatName: json['vikram_samvaat_name'] as String,
      sakaSamvaatNumber: (json['saka_samvaat_number'] as num).toInt(),
      sakaSamvaatName: json['saka_samvaat_name'] as String,
    );

Map<String, dynamic> _$$YearsModelImplToJson(_$YearsModelImpl instance) =>
    <String, dynamic>{
      'kali': instance.kali,
      'saka': instance.saka,
      'vikram_samvaat': instance.vikramSamvaat,
      'kali_samvaat_number': instance.kaliSamvaatNumber,
      'kali_samvaat_name': instance.kaliSamvaatName,
      'vikram_samvaat_number': instance.vikramSamvaatNumber,
      'vikram_samvaat_name': instance.vikramSamvaatName,
      'saka_samvaat_number': instance.sakaSamvaatNumber,
      'saka_samvaat_name': instance.sakaSamvaatName,
    };

_$AbhijitMuhurtaModelImpl _$$AbhijitMuhurtaModelImplFromJson(
  Map<String, dynamic> json,
) => _$AbhijitMuhurtaModelImpl(
  start: json['start'] as String,
  end: json['end'] as String,
);

Map<String, dynamic> _$$AbhijitMuhurtaModelImplToJson(
  _$AbhijitMuhurtaModelImpl instance,
) => <String, dynamic>{'start': instance.start, 'end': instance.end};
