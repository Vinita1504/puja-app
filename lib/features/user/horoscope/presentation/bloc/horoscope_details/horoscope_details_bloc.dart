import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/horoscope_details.dart';
import '../../../domain/entities/horoscope_category.dart';
import 'horoscope_details_event.dart';
import 'horoscope_details_state.dart';

/// Horoscope details BLoC
///
/// Manages the state of the horoscope details page,
/// including loading horoscope data and toggling between Daily Sun and Daily Moon.
class HoroscopeDetailsBloc
    extends Bloc<HoroscopeDetailsEvent, HoroscopeDetailsState> {
  HoroscopeDetailsBloc() : super(const HoroscopeDetailsInitial()) {
    on<HoroscopeDetailsLoaded>(_onHoroscopeDetailsLoaded);
    on<HoroscopeTypeChanged>(_onHoroscopeTypeChanged);
  }

  Future<void> _onHoroscopeDetailsLoaded(
    HoroscopeDetailsLoaded event,
    Emitter<HoroscopeDetailsState> emit,
  ) async {
    emit(const HoroscopeDetailsLoading());

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      // Mock categories data
      final categories = _getMockCategories();

      // Mock Daily Sun horoscope data
      final dailySunHoroscope = HoroscopeDetails(
        type: 'daily_sun',
        luckyColors: const ['white', 'red'],
        luckyNumbers: const [25, 4],
        luckyAlphabets: const ['A', 'R'],
        totalScore: 73,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel turpis in urna interdum posuere.',
        categories: categories,
      );

      emit(
        HoroscopeDetailsLoadedState(
          horoscopeDetails: dailySunHoroscope,
          selectedType: 'daily_sun',
        ),
      );
    } catch (e) {
      emit(
        HoroscopeDetailsError(
          message: 'Failed to load horoscope details: ${e.toString()}',
        ),
      );
    }
  }

  void _onHoroscopeTypeChanged(
    HoroscopeTypeChanged event,
    Emitter<HoroscopeDetailsState> emit,
  ) {
    if (state is HoroscopeDetailsLoadedState) {
      // Mock categories data
      final categories = _getMockCategories();

      // Mock data for Daily Moon (different from Daily Sun)
      final newHoroscope = event.type == 'daily_sun'
          ? HoroscopeDetails(
              type: 'daily_sun',
              luckyColors: const ['white', 'red'],
              luckyNumbers: const [25, 4],
              luckyAlphabets: const ['A', 'R'],
              totalScore: 73,
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel turpis in urna interdum posuere.',
              categories: categories,
            )
          : HoroscopeDetails(
              type: 'daily_moon',
              luckyColors: const ['blue', 'silver'],
              luckyNumbers: const [7, 14],
              luckyAlphabets: const ['M', 'N'],
              totalScore: 68,
              description:
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',
              categories: categories,
            );

      emit(
        HoroscopeDetailsLoadedState(
          horoscopeDetails: newHoroscope,
          selectedType: event.type,
        ),
      );
    }
  }

  /// Get mock categories data matching the image
  List<HoroscopeCategory> _getMockCategories() {
    return [
      const HoroscopeCategory(
        id: 'physique',
        title: 'Physique',
        description: 'A sense of unhappiness might be visible.',
        score: 42,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'status',
        title: 'Status',
        description: 'Negotiating with dealers might require.',
        score: 81,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'finance',
        title: 'Finance',
        description: 'Investment in real estate will prove.',
        score: 66,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'relationship',
        title: 'Relationship',
        description: 'Compromising might be necessary.',
        score: 29,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'career',
        title: 'Career',
        description: 'The time is ripe for execution.',
        score: 99,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'travel',
        title: 'Travel',
        description: 'Visiting a place that shall provide solace.',
        score: 94,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'family',
        title: 'Family',
        description: 'Seize the day for a solo adventure.',
        score: 81,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'friends',
        title: 'Friends',
        description: 'Reconciliation with a long-lost friend.',
        score: 81,
        iconPath: '',
      ),
      const HoroscopeCategory(
        id: 'health',
        title: 'Health',
        description: 'Mental ans physical exhaustion.',
        score: 12,
        iconPath: '',
      ),
    ];
  }
}
