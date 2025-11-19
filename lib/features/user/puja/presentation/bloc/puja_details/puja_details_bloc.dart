import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/puja.dart';
import '../../../domain/entities/puja_package.dart';
import '../../../../chadhava/domain/entities/faq_item.dart';
import 'puja_details_event.dart';
import 'puja_details_state.dart';

/// Puja details BLoC
///
/// Manages the state of the puja details page,
/// including loading puja data, managing packages, tabs, and FAQ expansion.
class PujaDetailsBloc extends Bloc<PujaDetailsEvent, PujaDetailsState> {
  PujaDetailsBloc() : super(const PujaDetailsState.initial()) {
    on<PujaDetailsLoaded>(_onPujaDetailsLoaded);
    on<PackageSelected>(_onPackageSelected);
    on<FaqItemToggled>(_onFaqItemToggled);
    on<TabChanged>(_onTabChanged);
    on<CarouselImageChanged>(_onCarouselImageChanged);
    on<ScrollPositionChanged>(_onScrollPositionChanged);
  }

  Future<void> _onPujaDetailsLoaded(
    PujaDetailsLoaded event,
    Emitter<PujaDetailsState> emit,
  ) async {
    emit(const PujaDetailsState.loading());

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final now = DateTime.now();

      // Mock PujaEntity
      final puja = PujaEntity(
        id: event.pujaId,
        name: 'Rudrabhisheka Puja',
        title: 'Rudrabhisheka Puja',
        description:
            'The Rudraksh Puja is a sacred ritual dedicated to Lord Shiva, performed to energize and sanctify the Rudraksha beads before wearing or worshipping them. According to ancient Vedic scriptures, Rudraksha is believed to be the tear of Lord Shiva — a divine symbol of protection, purity, and spiritual awakening.',
        imageUrls: [
          'assets/images/rudra-abhishek.png',
          'assets/images/shivji.png',
        ],
        benefits: [
          {
            'title': 'Attracts divine blessings of Lord Shiva',
            'description': '',
          },
          {
            'title': 'Energizes the Rudraksha for maximum spiritual benefit',
            'description': '',
          },
          {
            'title': 'Removes negativity and obstacles from life',
            'description': '',
          },
          {
            'title': 'Brings peace, mental clarity, and spiritual awakening',
            'description': '',
          },
          {
            'title': 'Promotes health, longevity, and success',
            'description': '',
          },
        ],
        startDatetime: now,
        endDatetime: now.add(const Duration(days: 30)),
        createdAt: now,
        updatedAt: now,
      );

      // Mock PujaPackageEntity list
      final packages = [
        PujaPackageEntity(
          id: '1',
          name: 'Basic',
          price: 499900, // 4,999 rupees in paise
          benefits: [
            '1 Preist',
            'Pandit ji dakshina',
            'All Havan Items',
            'All Pooja Samagri',
            'Basic Mantra Chantings',
            'Fruits & Prasad',
          ],
          createdAt: now,
          updatedAt: now,
        ),
        PujaPackageEntity(
          id: '2',
          name: 'Standard',
          price: 799900, // 7,999 rupees in paise
          benefits: [
            '2 Preists',
            'Pandit ji dakshina',
            'All Havan Items',
            'All Pooja Samagri',
            'Advanced Mantra Chantings',
            'Fruits & Prasad',
            'Live Streaming',
          ],
          createdAt: now,
          updatedAt: now,
        ),
        PujaPackageEntity(
          id: '3',
          name: 'Premium',
          price: 1299900, // 12,999 rupees in paise
          benefits: [
            '3 Preists',
            'Pandit ji dakshina',
            'All Havan Items',
            'All Pooja Samagri',
            'Complete Mantra Chantings',
            'Fruits & Prasad',
            'Live Streaming',
            'Video Recording',
            'Certificate',
          ],
          createdAt: now,
          updatedAt: now,
        ),
      ];

      // Mock FAQ items
      final faqs = [
        const FaqItem(
          id: '1',
          question: 'Do I need to pay anything for Pandit ji ?',
          answer:
              'No, you do not need to pay anything extra for Pandit ji. The service fee is included in the package price.',
        ),
        const FaqItem(
          id: '2',
          question: 'How does Bookmypooja pay Pandit ji',
          answer:
              'PoojaKaro handles all payments to Pandit ji directly. You only need to pay the package price shown.',
        ),
      ];

      emit(
        PujaDetailsState.loaded(
          puja: puja,
          packages: packages,
          faqs: faqs,
          activeTabIndex: 0,
          selectedPackage: 'Basic',
          expandedFaqIndices: {},
          currentImageIndex: 0,
        ),
      );
    } catch (e) {
      emit(
        PujaDetailsState.error(
          message: 'Failed to load puja details: ${e.toString()}',
        ),
      );
    }
  }

  void _onPackageSelected(
    PackageSelected event,
    Emitter<PujaDetailsState> emit,
  ) {
    state.maybeWhen(
      loaded:
          (
            puja,
            packages,
            faqs,
            activeTabIndex,
            _,
            expandedFaqIndices,
            currentImageIndex,
          ) {
            emit(
              PujaDetailsState.loaded(
                puja: puja,
                packages: packages,
                faqs: faqs,
                activeTabIndex: activeTabIndex,
                selectedPackage: event.packageName,
                expandedFaqIndices: expandedFaqIndices,
                currentImageIndex: currentImageIndex,
              ),
            );
          },
      orElse: () {},
    );
  }

  void _onFaqItemToggled(FaqItemToggled event, Emitter<PujaDetailsState> emit) {
    state.maybeWhen(
      loaded:
          (
            puja,
            packages,
            faqs,
            activeTabIndex,
            selectedPackage,
            _,
            currentImageIndex,
          ) {
            final newExpandedIndices = Set<int>.from(
              state.maybeWhen(
                loaded:
                    (_, __, ___, ____, _____, expandedFaqIndices, _______) =>
                        expandedFaqIndices,
                orElse: () => <int>{},
              ),
            );
            if (newExpandedIndices.contains(event.index)) {
              newExpandedIndices.remove(event.index);
            } else {
              newExpandedIndices.add(event.index);
            }
            emit(
              PujaDetailsState.loaded(
                puja: puja,
                packages: packages,
                faqs: faqs,
                activeTabIndex: activeTabIndex,
                selectedPackage: selectedPackage,
                expandedFaqIndices: newExpandedIndices,
                currentImageIndex: currentImageIndex,
              ),
            );
          },
      orElse: () {},
    );
  }

  void _onTabChanged(TabChanged event, Emitter<PujaDetailsState> emit) {
    state.maybeWhen(
      loaded:
          (
            puja,
            packages,
            faqs,
            _,
            selectedPackage,
            expandedFaqIndices,
            currentImageIndex,
          ) {
            emit(
              PujaDetailsState.loaded(
                puja: puja,
                packages: packages,
                faqs: faqs,
                activeTabIndex: event.index,
                selectedPackage: selectedPackage,
                expandedFaqIndices: expandedFaqIndices,
                currentImageIndex: currentImageIndex,
              ),
            );
          },
      orElse: () {},
    );
  }

  void _onCarouselImageChanged(
    CarouselImageChanged event,
    Emitter<PujaDetailsState> emit,
  ) {
    state.maybeWhen(
      loaded:
          (
            puja,
            packages,
            faqs,
            activeTabIndex,
            selectedPackage,
            expandedFaqIndices,
            _,
          ) {
            emit(
              PujaDetailsState.loaded(
                puja: puja,
                packages: packages,
                faqs: faqs,
                activeTabIndex: activeTabIndex,
                selectedPackage: selectedPackage,
                expandedFaqIndices: expandedFaqIndices,
                currentImageIndex: event.index,
              ),
            );
          },
      orElse: () {},
    );
  }

  void _onScrollPositionChanged(
    ScrollPositionChanged event,
    Emitter<PujaDetailsState> emit,
  ) {
    // This will be handled by calculating active tab based on scroll position
    // For now, we'll keep the logic in the page widget and dispatch TabChanged
    // when the active tab needs to change
  }
}
