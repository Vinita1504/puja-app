import '../../../domain/entities/horoscope_details.dart';

/// Horoscope details state
abstract class HoroscopeDetailsState {
  const HoroscopeDetailsState();
}

/// Initial state
class HoroscopeDetailsInitial extends HoroscopeDetailsState {
  const HoroscopeDetailsInitial();
}

/// Loading state
class HoroscopeDetailsLoading extends HoroscopeDetailsState {
  const HoroscopeDetailsLoading();
}

/// Loaded state with horoscope data
class HoroscopeDetailsLoadedState extends HoroscopeDetailsState {
  final HoroscopeDetails horoscopeDetails;
  final String selectedType;

  const HoroscopeDetailsLoadedState({
    required this.horoscopeDetails,
    this.selectedType = 'daily_sun',
  });
}

/// Error state
class HoroscopeDetailsError extends HoroscopeDetailsState {
  final String message;

  const HoroscopeDetailsError({required this.message});
}
