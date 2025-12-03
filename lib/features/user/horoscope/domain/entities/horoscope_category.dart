/// Horoscope category entity
///
/// Represents a single horoscope category (e.g., Physique, Status, Finance)
/// with its score and description.
class HoroscopeCategory {
  final String id;
  final String title;
  final String description;
  final int score; // 0-100
  final String iconPath; // Placeholder for future lottie animation

  const HoroscopeCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.score,
    required this.iconPath,
  });
}

