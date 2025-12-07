/// Kundali result entity
///
/// Represents the complete kundali calculation results including
/// vedic attributes, nakshatra details, gemstones, and panchang information.
class KundaliResult {
  /// Gana classification (Dev, Manushya, Rakshas)
  final String gana;

  /// Yoni (animal symbol)
  final String yoni;

  /// Vasya (affinity)
  final String vasya;

  /// Nadi (pulse/energy)
  final String nadi;

  /// Varna (caste/classification)
  final String varna;

  /// Paya (metal/element)
  final String paya;

  /// Tatva (element)
  final String tatva;

  /// Life stone recommendation
  final String lifeStone;

  /// Lucky stone recommendation
  final String luckyStone;

  /// Fortune stone recommendation
  final String fortuneStone;

  /// Starting letters for name
  final String nameStart;

  /// Ascendant sign (Lagna)
  final String ascendantSign;

  /// Ascendant nakshatra
  final String ascendantNakshatra;

  /// Rasi (moon sign)
  final String rasi;

  /// Rasi lord (ruling planet of moon sign)
  final String rasiLord;

  /// Birth nakshatra
  final String nakshatra;

  /// Nakshatra lord (ruling planet)
  final String nakshatraLord;

  /// Nakshatra pada (quarter)
  final int nakshatraPada;

  /// Sun sign
  final String sunSign;

  /// Tithi at birth
  final String tithi;

  /// Karana at birth
  final String karana;

  /// Yoga at birth
  final String yoga;

  const KundaliResult({
    required this.gana,
    required this.yoni,
    required this.vasya,
    required this.nadi,
    required this.varna,
    required this.paya,
    required this.tatva,
    required this.lifeStone,
    required this.luckyStone,
    required this.fortuneStone,
    required this.nameStart,
    required this.ascendantSign,
    required this.ascendantNakshatra,
    required this.rasi,
    required this.rasiLord,
    required this.nakshatra,
    required this.nakshatraLord,
    required this.nakshatraPada,
    required this.sunSign,
    required this.tithi,
    required this.karana,
    required this.yoga,
  });

  /// Creates a KundaliResult from JSON response
  factory KundaliResult.fromJson(Map<String, dynamic> json) {
    return KundaliResult(
      gana: json['gana'] as String,
      yoni: json['yoni'] as String,
      vasya: json['vasya'] as String,
      nadi: json['nadi'] as String,
      varna: json['varna'] as String,
      paya: json['paya'] as String,
      tatva: json['tatva'] as String,
      lifeStone: json['life_stone'] as String,
      luckyStone: json['lucky_stone'] as String,
      fortuneStone: json['fortune_stone'] as String,
      nameStart: json['name_start'] as String,
      ascendantSign: json['ascendant_sign'] as String,
      ascendantNakshatra: json['ascendant_nakshatra'] as String,
      rasi: json['rasi'] as String,
      rasiLord: json['rasi_lord'] as String,
      nakshatra: json['nakshatra'] as String,
      nakshatraLord: json['nakshatra_lord'] as String,
      nakshatraPada: json['nakshatra_pada'] as int,
      sunSign: json['sun_sign'] as String,
      tithi: json['tithi'] as String,
      karana: json['karana'] as String,
      yoga: json['yoga'] as String,
    );
  }
}

