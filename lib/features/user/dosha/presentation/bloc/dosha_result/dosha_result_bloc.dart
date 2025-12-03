import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/mangal_dosha_result.dart';
import '../../../domain/entities/shankhpal_dosha_result.dart';
import 'dosha_result_event.dart';
import 'dosha_result_state.dart';

/// Dosha result BLoC
///
/// Manages the state of the dosha result page,
/// including loading dosha data, tab selection, and accordion expansion.
class DoshaResultBloc extends Bloc<DoshaResultEvent, DoshaResultState> {
  DoshaResultBloc() : super(const DoshaResultInitial()) {
    on<DoshaResultLoaded>(_onDoshaResultLoaded);
    on<DoshaTabChanged>(_onDoshaTabChanged);
    on<MangalFactorAccordionToggled>(_onMangalFactorAccordionToggled);
    on<ShankhpalMeaningAccordionToggled>(_onShankhpalMeaningAccordionToggled);
  }

  Future<void> _onDoshaResultLoaded(
    DoshaResultLoaded event,
    Emitter<DoshaResultState> emit,
  ) async {
    emit(const DoshaResultLoading());

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      // Mock Mangal dosha data
      final mangalDoshaResult = MangalDoshaResult(
        isDoshaPresent: true,
        score: 67,
        factors: const MangalDoshaFactors(
          moon: 'Mangal dosh from moon lagna, mars in house 1, aspecting the houses 4, 7 and 8',
          saturn: 'Mangal dosh along with mars-saturn association/aspect, mars in house 10 and saturn in house 10',
          rahu: 'Rahu transforming into mars in house 7 in the sign of Scorpio',
        ),
        botResponse: 'You are 67% manglik, It is good to consult an astrologer',
      );

      // Mock Shankhpal dosha data
      final shankhpalDoshaResult = ShankhpalDoshaResult(
        isDoshaPresent: true,
        rahuKetuAxis: '4-10',
        direction: 'Descending',
        remedies: const [
          'Kaal Sarpa Dosh Nivaran Puja is recommended. A person having Kaal Sarpa Yoga in his/her kundli should worship Lord Shiva regularly and for better results, one can also chant the Moola Mantra of Lord Shiva. "Om Namah Shivaya"(ॐ नमः शिवाय). This mantra acts as a Kaal Sarpa Dosha Nivaran mantra. The students who are affected by the malefic effects of Kaal Sarpa Yoga should chant the Moola Mantra of Goddess Sarasvati. Chanting the Moola mantra will enhance the concentration power of the students and as a result, they will be able to perform better. \'Om SaraswatiMayaa Drishtwa, VeenaPustak Dharnim| HansVahini Samayuktaa MaaVidya DaanKarotu Me Om\'',
          'Kaal Sarpa Dosh Nivaran Puja is recommended. In an auspicious Muhurat, offer three pieces of coal in flowing water, one at a time. It is one of the best Kaal Sarpa Dosh remedies. This will nullify the effect of Kaal Sarpa Dosh from the native\'s horoscope and he/she would be able to lead a more peaceful and happy life.Chanting Hanuman Chalisa 108 times regularly is highly beneficial for the natives who are suffering from Kaal Sarpa Yoga. The people who are affected by this yoga can also visit Lord Hanuman\'s Mandir and can apply a Tilak of Sindhoor from the idol of Lord Hanuman.',
          'Kaal Sarpa Dosh Nivaran Puja is recommended. Chanting Maha Mrityunjaya Mantra 108 times on a Rudraksha Rosary will help the native in getting rid of the Kaal Sarpa Yoga.\'Om Tayambakam Yajamahe Sugandhim Pustivardhanam. Urvarukamiva Bandhanan Mrtyor Muksiya Mamratat\'.',
          'Keeping a peacock\'s feather in the home will reduce the effects of Kaal Sarpa Yoga. Children can also keep it in their books for enhancing their concentration level.',
          'On every Saturday, worshipping Lord Shani and chanting the Moola Mantra of Lord Shani will reduce the effects of Kaal Sarpa Yoga. People can also offer sesame and black gram to Lord Shani.\'Om Shani Charaya Namaha\'',
          'Kaal Sarpa Dosh Nivaran Puja is recommended. Place the Kaal Sarpa Yoga Yantra in your home in an auspicious Mahurat to get rid of the Kaal sarpa Yoga. You can also chant this Moola mantra for energizing the yantra. "Bramha Muri Tripurantkari Bhanuh Shashih BhumiSuto Budhashch"',
          'Do pooja on Naag Panchami and after the pooja, make sure that the snake charmer frees the snake in an open ground.',
          'General Shiva Pooja. Even a general Shiva Pooja where one would chant a certain Stotra of Lord Shiva will also reduce the impact of Kaal Sarpaa Dosha. This will please Lord Shiva who can remove all the problems from a natives life. This canting of the mantras in the pooja should be done religiously and with an outbreak.',
          'Do Kaal Sarpa Dosh Nivaran Puja. On every Monday, on the same place and time, offer a handful of wheat, shrivel and a coin of 1, 2, 5, or 10. Chant the name of Lord Rama while offering all these things. Make sure that you take the same value of the coin on every Monday. Perform this cycle of activities for 21 Mondays and get rid of this Yoga.',
        ],
        botResponse:
            'This person has Shankhpal Kaal Sarp Dosh. If the Rahu is in the 4th house and Ketu is in the 10th house, having all other planets between them, then the yoga is known as Shankhpal Kaal Sarp Dosh. A person under the influence of this Yoga sees financial hardships, diseases, and a lot of problems in their houses. There is really minimal happiness and a person faces many problems in education.',
      );

      emit(
        DoshaResultLoadedState(
          mangalDoshaResult: mangalDoshaResult,
          shankhpalDoshaResult: shankhpalDoshaResult,
          selectedTabIndex: 0,
        ),
      );
    } catch (e) {
      emit(
        DoshaResultError(
          message: 'Failed to load dosha results: ${e.toString()}',
        ),
      );
    }
  }

  void _onDoshaTabChanged(
    DoshaTabChanged event,
    Emitter<DoshaResultState> emit,
  ) {
    if (state is DoshaResultLoadedState) {
      final currentState = state as DoshaResultLoadedState;
      emit(
        currentState.copyWith(selectedTabIndex: event.tabIndex),
      );
    }
  }

  void _onMangalFactorAccordionToggled(
    MangalFactorAccordionToggled event,
    Emitter<DoshaResultState> emit,
  ) {
    if (state is DoshaResultLoadedState) {
      final currentState = state as DoshaResultLoadedState;
      final newExpandedIndices = Set<int>.from(
        currentState.expandedMangalFactorIndices,
      );

      if (newExpandedIndices.contains(event.index)) {
        newExpandedIndices.remove(event.index);
      } else {
        newExpandedIndices.add(event.index);
      }

      emit(
        currentState.copyWith(
          expandedMangalFactorIndices: newExpandedIndices,
        ),
      );
    }
  }

  void _onShankhpalMeaningAccordionToggled(
    ShankhpalMeaningAccordionToggled event,
    Emitter<DoshaResultState> emit,
  ) {
    if (state is DoshaResultLoadedState) {
      final currentState = state as DoshaResultLoadedState;
      emit(
        currentState.copyWith(
          isShankhpalMeaningExpanded: !currentState.isShankhpalMeaningExpanded,
        ),
      );
    }
  }
}

