import '../models/panchang_model.dart';

/// Panchang local data source
///
/// Provides mock Panchang data for development and testing.
abstract class PanchangLocalDataSource {
  /// Get today's Panchang from local/mock data
  Future<PanchangModel> getTodayPanchang();
}

/// Panchang local data source implementation
class PanchangLocalDataSourceImpl implements PanchangLocalDataSource {
  @override
  Future<PanchangModel> getTodayPanchang() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    // Return mock data based on provided JSON structure
    return PanchangModel(
      day: DayModel(name: 'Friday'),
      tithi: TithiModel(
        name: 'Chaturdasi',
        number: 29,
        nextTithi: 'Amavasya',
        type: 'Krishna',
        diety: 'Shiva',
        start: DateTime.parse('1994-03-10 09:18:44'),
        end: DateTime.parse('1994-03-11 10:32:31'),
        meaning: 'Fourteenth day after Purnima (full moon).',
        special: 'Good for work related to spiritual practices and seeking blessings.',
      ),
      nakshatra: NakshatraModel(
        name: 'Shatabhisha',
        number: 24,
        lord: 'Rahu',
        diety: 'Varuna',
        start: DateTime.parse('1994-03-10 19:06:10'),
        nextNakshatra: 'PurvaBhadra',
        end: DateTime.parse('1994-03-11 21:01:36'),
        auspiciousDisha: ['North', 'East', 'West'],
        meaning: 'Hundred physicians. Associated with healing, medicine, and rejuvenation.',
        special: 'Good for activities related to healing and rejuvenation.',
        summary:
            'This nakshatra is of a mixed quality. Good for immediate actions, competition, work with metals. It is suitable to perform the routine activities, day-to-day duties, but it is not recommended to start new important deeds. Consult an astrologer for more information',
      ),
      karana: KaranaModel(
        name: 'Sakuna',
        number: 8,
        type: 'Malefic',
        lord: 'Kalyuga',
        diety: 'Kaali',
        start: DateTime.parse('1994-03-10 21:52:41'),
        end: DateTime.parse('1994-03-11 10:32:31'),
        special:
            'Suitable for healing, medical procedures, plantation, Mantra-Sadhana and black magic',
        nextKarana: 'Chatushpada',
      ),
      yoga: YogaModel(
        name: 'Siddha',
        number: 21,
        start: DateTime.parse('1994-03-10 08:24:55'),
        end: DateTime.parse('1994-03-11 08:15:03'),
        nextYoga: 'Sadhya',
        meaning: 'Perfected. Associated with perfection, completion, and mastery.',
        special: 'Good for activities that involve perfection and mastery.',
      ),
      ayanamsa: AyanamsaModel(name: "23 46'51\""),
      rasi: RasiModel(name: 'Aquarius'),
      sunPosition: SunPositionModel(
        zodiac: 'Aquarius',
        nakshatra: 'PurvaBhadra',
        rasiNo: 11,
        nakshatraNo: 24,
        sunDegreeAtRise: 326.4626255649611,
      ),
      moonPosition: MoonPositionModel(moonDegree: 312.55253128389194),
      advancedDetails: AdvancedDetailsModel(
        sunRise: '6:32:58 AM',
        sunSet: '6:33:57 PM',
        moonRise: '5:37:31 AM',
        moonSet: '5:55:57 PM',
        nextFullMoon: 'Sun Mar 27 1994',
        nextNewMoon: 'Sat Mar 12 1994',
        masa: MasaModel(
          amantaNumber: 11,
          amantaDate: 29,
          amantaName: 'Magha',
          alternateAmantaName: 'Maasi',
          amantaStart: 'Thu Feb 10 1994',
          amantaEnd: 'Sat Mar 12 1994',
          adhikMaasa: false,
          ayana: 'Uttrayana',
          realAyana: 'Uttrayana',
          tamilMonthNum: 11,
          tamilMonth: 'maasi',
          tamilDay: 27,
          purnimantaDate: 14,
          purnimantaNumber: 12,
          purnimantaName: 'Phalguna',
          alternatePurnimantaName: 'Panguni',
          purnimantaStart: 'Sat Feb 26 1994',
          purnimantaEnd: 'Sun Mar 27 1994',
          moonPhase: '345/360',
          paksha: 'Krishna Paksha',
          ritu: 'Shishir',
          rituTamil: 'Ilavenil',
        ),
        moonYoginiNivas: 'West',
        ahargana: 1860957.2729020002,
        years: YearsModel(
          kali: 5094,
          saka: 1915,
          vikramSamvaat: 2050,
          kaliSamvaatNumber: 8,
          kaliSamvaatName: 'Bhava',
          vikramSamvaatNumber: 20,
          vikramSamvaatName: 'Vyaya',
          sakaSamvaatNumber: 7,
          sakaSamvaatName: 'Shri Mukha',
        ),
        vaara: 'Shukra vaara',
        dishaShool: 'East',
        abhijitMuhurta: AbhijitMuhurtaModel(
          start: '12:09:28 PM',
          end: '12:57:28 PM',
        ),
      ),
      rahukaal: '11:02 AM to 12:32 PM',
      gulika: '08:02 AM to 09:32 AM',
      yamakanta: '03:32 PM to 05:02 PM',
      date: 'Fri Mar 11 1994',
    );
  }
}

