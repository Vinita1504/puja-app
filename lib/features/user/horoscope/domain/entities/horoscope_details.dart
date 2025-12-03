import 'horoscope_category.dart';

/// Horoscope details entity
///
/// Represents daily horoscope information including lucky colors,
/// numbers, alphabets, total score, and categories for Daily Sun or Daily Moon.
class HoroscopeDetails {
  final String type; // 'daily_sun' or 'daily_moon'
  final List<String> luckyColors;
  final List<int> luckyNumbers;
  final List<String> luckyAlphabets;
  final int totalScore;
  final String description;
  final List<HoroscopeCategory> categories;

  const HoroscopeDetails({
    required this.type,
    required this.luckyColors,
    required this.luckyNumbers,
    required this.luckyAlphabets,
    required this.totalScore,
    required this.description,
    required this.categories,
  });
}
