/// Horoscope details events
abstract class HoroscopeDetailsEvent {
  const HoroscopeDetailsEvent();
}

/// Load horoscope details
class HoroscopeDetailsLoaded extends HoroscopeDetailsEvent {
  const HoroscopeDetailsLoaded();
}

/// Toggle between Daily Sun and Daily Moon
class HoroscopeTypeChanged extends HoroscopeDetailsEvent {
  final String type; // 'daily_sun' or 'daily_moon'

  const HoroscopeTypeChanged({required this.type});
}
