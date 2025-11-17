import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/chadhava.dart';
import '../../../domain/entities/chadhava_offering.dart';
import '../../../domain/entities/review.dart';
import '../../../domain/entities/faq_item.dart';
import 'chadhava_details_event.dart';
import 'chadhava_details_state.dart';

/// Chadhava details BLoC
///
/// Manages the state of the chadhava details page,
/// including loading chadhava data, managing carousel, and FAQ expansion.
class ChadhavaDetailsBloc
    extends Bloc<ChadhavaDetailsEvent, ChadhavaDetailsState> {
  ChadhavaDetailsBloc() : super(const ChadhavaDetailsState.initial()) {
    on<ChadhavaDetailsLoaded>(_onChadhavaDetailsLoaded);
    on<OfferingsListExpanded>(_onOfferingsListExpanded);
    on<FaqItemToggled>(_onFaqItemToggled);
    on<ShareButtonTapped>(_onShareButtonTapped);
    on<CarouselImageChanged>(_onCarouselImageChanged);
    on<OfferingAdded>(_onOfferingAdded);
    on<OfferingRemoved>(_onOfferingRemoved);
    on<ContinueButtonTapped>(_onContinueButtonTapped);
  }

  Future<void> _onChadhavaDetailsLoaded(
    ChadhavaDetailsLoaded event,
    Emitter<ChadhavaDetailsState> emit,
  ) async {
    emit(const ChadhavaDetailsState.loading());

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final now = DateTime.now();
      
      // Mock ChadhavaEntity
      final chadhava = ChadhavaEntity(
        id: event.chadhavaId,
        title: 'Rudra Abhishek Chadhava',
        description:
            'Rudra Abhishek is a sacred ritual performed to worship Lord Shiva by offering various holy items like water, milk, honey, ghee, and flowers to the Shiva Lingam. This powerful puja helps in removing negative energies, obstacles, and brings peace, prosperity, and spiritual growth. The ceremony is performed by experienced priests following Vedic traditions. It is believed to bring divine blessings, mental clarity, and success in all endeavors. The ritual includes chanting of Rudra mantras and offering prayers for the well-being of the family.',
        imageUrls: [
          'assets/images/shivji.png',
          'assets/images/shivji.png',
          'assets/images/shivji.png',
        ],
        isActive: true,
        createdAt: now,
        updatedAt: now,
      );

      // Mock ChadhavaOfferingEntity list
      final offerings = [
        ChadhavaOfferingEntity(
          id: '1',
          title: 'Basic Abhishek Package',
          description:
              'Includes water, milk, and honey abhishek with basic flowers and bilva leaves. Perfect for daily worship and seeking blessings. Includes prasad distribution and basic mantras.',
          price: 51000, // 510 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
        ChadhavaOfferingEntity(
          id: '2',
          title: 'Premium Abhishek Package',
          description:
              'Includes all items from basic package plus ghee, curd, sugar, and premium flowers. Includes Rudra mantras, aarti, and special prasad. Ideal for special occasions and seeking major blessings.',
          price: 101000, // 1010 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
        ChadhavaOfferingEntity(
          id: '3',
          title: 'Deluxe Abhishek Package',
          description:
              'Complete abhishek with all 11 items including panchamrit, sandalwood paste, sacred ash, and premium flowers. Includes complete Rudra path, special aarti, and elaborate prasad. Best for major life events and seeking divine intervention.',
          price: 251000, // 2510 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
      ];

      // Mock Review
      final reviews = [
        Review(
          id: '1',
          userName: 'Rahul Sharma',
          rating: 5,
          reviewText:
              'Excellent service! The Rudra Abhishek was performed with great devotion and precision. The priest was knowledgeable and explained everything clearly. I felt a deep sense of peace and positivity after the ceremony. Highly recommended for anyone seeking spiritual growth and divine blessings.',
          createdAt: now.subtract(const Duration(days: 5)),
        ),
        Review(
          id: '2',
          userName: 'Priya Patel',
          rating: 4,
          reviewText:
              'Very good experience overall. The ceremony was well-organized and the offerings were of good quality. The priest was punctual and performed all rituals properly. The only minor issue was the timing could have been better communicated. But the spiritual benefits were definitely felt.',
          createdAt: now.subtract(const Duration(days: 12)),
        ),
      ];

      // Mock FAQ items
      final faqs = [
        FaqItem(
          id: '1',
          question: 'Do I need to pay anything extra for Pandit ji?',
          answer:
              'No, you do not need to pay anything extra for Pandit ji. The service fee is included in the package price.',
        ),
        FaqItem(
          id: '2',
          question: 'How does PoojaKaro pay Pandit ji?',
          answer:
              'PoojaKaro handles all payments to Pandit ji directly. You only need to pay the package price shown.',
        ),
        FaqItem(
          id: '3',
          question: 'Can I offer additional donations to Pandit Ji after the Puja?',
          answer:
              'Yes, you can offer additional donations to Pandit ji after the puja if you wish. This is completely optional and at your discretion.',
        ),
        FaqItem(
          id: '4',
          question: 'What items are included in the Abhishek?',
          answer:
              'The items included depend on the package you choose. Basic package includes water, milk, and honey. Premium includes additional items like ghee and curd. Deluxe package includes all 11 sacred items for complete abhishek.',
        ),
        FaqItem(
          id: '5',
          question: 'How long does the Rudra Abhishek ceremony take?',
          answer:
              'The duration varies by package. Basic package takes approximately 30-45 minutes, Premium takes 45-60 minutes, and Deluxe package takes 60-90 minutes including complete Rudra path and special rituals.',
        ),
      ];

      emit(ChadhavaDetailsState.loaded(
        chadhava: chadhava,
        offerings: offerings,
        reviews: reviews,
        faqs: faqs,
        currentImageIndex: 0,
        expandedFaqIndices: {},
        selectedOfferings: [],
      ));
    } catch (e) {
      emit(ChadhavaDetailsState.error(
        message: 'Failed to load chadhava details: ${e.toString()}',
      ));
    }
  }

  void _onOfferingsListExpanded(
    OfferingsListExpanded event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    // This can be handled in the widget if needed
    // For now, we'll keep it simple
  }

  void _onFaqItemToggled(
    FaqItemToggled event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
      state.maybeWhen(
      loaded: (chadhava, offerings, reviews, faqs, currentImageIndex,
          expandedFaqIndices, selectedOfferings) {
        final newExpandedIndices = Set<int>.from(expandedFaqIndices);
        if (newExpandedIndices.contains(event.index)) {
          newExpandedIndices.remove(event.index);
        } else {
          newExpandedIndices.add(event.index);
        }
        emit(ChadhavaDetailsState.loaded(
          chadhava: chadhava,
          offerings: offerings,
          reviews: reviews,
          faqs: faqs,
          currentImageIndex: currentImageIndex,
          expandedFaqIndices: newExpandedIndices,
          selectedOfferings: selectedOfferings,
        ));
      },
      orElse: () {},
    );
  }

  void _onShareButtonTapped(
    ShareButtonTapped event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    // Handle share functionality
    // This can be implemented with share_plus package or similar
  }

  void _onCarouselImageChanged(
    CarouselImageChanged event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    state.maybeWhen(
      loaded: (chadhava, offerings, reviews, faqs, _, expandedFaqIndices,
          selectedOfferings) {
        emit(ChadhavaDetailsState.loaded(
          chadhava: chadhava,
          offerings: offerings,
          reviews: reviews,
          faqs: faqs,
          currentImageIndex: event.index,
          expandedFaqIndices: expandedFaqIndices,
          selectedOfferings: selectedOfferings,
        ));
      },
      orElse: () {},
    );
  }

  void _onOfferingAdded(
    OfferingAdded event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    state.maybeWhen(
      loaded: (chadhava, offerings, reviews, faqs, currentImageIndex,
          expandedFaqIndices, selectedOfferings) {
        // Check if offering is already in the list
        final offering = offerings.firstWhere(
          (o) => o.id == event.offeringId,
          orElse: () => throw StateError('Offering not found'),
        );

        // Add offering if not already selected
        final updatedSelectedOfferings = List<ChadhavaOfferingEntity>.from(
          selectedOfferings,
        );
        if (!updatedSelectedOfferings.any((o) => o.id == event.offeringId)) {
          updatedSelectedOfferings.add(offering);
        }

        emit(ChadhavaDetailsState.loaded(
          chadhava: chadhava,
          offerings: offerings,
          reviews: reviews,
          faqs: faqs,
          currentImageIndex: currentImageIndex,
          expandedFaqIndices: expandedFaqIndices,
          selectedOfferings: updatedSelectedOfferings,
        ));
      },
      orElse: () {},
    );
  }

  void _onOfferingRemoved(
    OfferingRemoved event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    state.maybeWhen(
      loaded: (chadhava, offerings, reviews, faqs, currentImageIndex,
          expandedFaqIndices, selectedOfferings) {
        final updatedSelectedOfferings = selectedOfferings
            .where((o) => o.id != event.offeringId)
            .toList();

        emit(ChadhavaDetailsState.loaded(
          chadhava: chadhava,
          offerings: offerings,
          reviews: reviews,
          faqs: faqs,
          currentImageIndex: currentImageIndex,
          expandedFaqIndices: expandedFaqIndices,
          selectedOfferings: updatedSelectedOfferings,
        ));
      },
      orElse: () {},
    );
  }

  void _onContinueButtonTapped(
    ContinueButtonTapped event,
    Emitter<ChadhavaDetailsState> emit,
  ) {
    // Handle continue button tap
    // This can navigate to checkout or cart page
    // For now, we'll just keep the state as is
    // TODO: Implement navigation to checkout/cart page
  }
}

