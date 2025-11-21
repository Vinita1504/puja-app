import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../puja/domain/entities/puja.dart';
import '../../../puja/domain/entities/puja_package.dart';
import '../../../chadhava/domain/entities/chadhava_offering.dart';
import 'puja_cart_event.dart';
import 'puja_cart_state.dart';

/// Puja cart BLoC
///
/// Manages the state of the puja cart page,
/// including loading puja/package data, managing offerings, and calculating totals.
class PujaCartBloc extends Bloc<PujaCartEvent, PujaCartState> {
  PujaCartBloc() : super(const PujaCartState.initial()) {
    on<CartLoaded>(_onCartLoaded);
    on<OfferingsFetched>(_onOfferingsFetched);
    on<OfferingAdded>(_onOfferingAdded);
    on<OfferingRemoved>(_onOfferingRemoved);
  }

  Future<void> _onCartLoaded(
    CartLoaded event,
    Emitter<PujaCartState> emit,
  ) async {
    emit(const PujaCartState.loading());

    // Validate pujaId and packageId
    if (event.pujaId.isEmpty ||
        event.packageId.isEmpty ||
        event.pujaId == 'default' ||
        event.packageId == 'default') {
      emit(
        const PujaCartState.error(
          message:
              'Invalid puja or package selected. Please select a puja and package.',
        ),
      );
      return;
    }

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final now = DateTime.now();

      // Mock PujaEntity
      final puja = PujaEntity(
        id: event.pujaId,
        name: 'Rudrabhishek pooja',
        title: 'Rudrabhishek pooja',
        description:
            'The Rudraksh Puja is a sacred ritual dedicated to Lord Shiva, performed to energize and sanctify the Rudraksha beads before wearing or worshipping them.',
        imageUrls: [
          'assets/images/rudra-abhishek.png',
          'assets/images/shivji.png',
        ],
        startDatetime: now,
        endDatetime: now.add(const Duration(days: 30)),
        createdAt: now,
        updatedAt: now,
      );

      // Mock PujaPackageEntity - find by packageId
      final package = PujaPackageEntity(
        id: event.packageId,
        name: 'Basic',
        price: 85100, // 851 rupees in paise
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
      );

      // Mock offerings - will be loaded separately
      final offerings = <ChadhavaOfferingEntity>[];

      emit(
        PujaCartState.loaded(
          puja: puja,
          package: package,
          offerings: offerings,
          selectedOfferings: [],
        ),
      );

      // Automatically fetch offerings after cart is loaded
      add(const PujaCartEvent.offeringsFetched());
    } catch (e) {
      emit(
        PujaCartState.error(message: 'Failed to load cart: ${e.toString()}'),
      );
    }
  }

  Future<void> _onOfferingsFetched(
    OfferingsFetched event,
    Emitter<PujaCartState> emit,
  ) async {
    // Extract state values first, then perform async operation
    PujaEntity? puja;
    PujaPackageEntity? package;
    List<ChadhavaOfferingEntity>? selectedOfferings;

    // Extract values from state using maybeWhen
    state.maybeWhen(
      loaded: (p, pk, _, sel) {
        puja = p;
        package = pk;
        selectedOfferings = sel;
      },
      orElse: () {
        // State is not loaded, cannot fetch offerings
        emit(
          const PujaCartState.error(
            message: 'Cannot fetch offerings: Cart not loaded',
          ),
        );
      },
    );

    // Validate that state is loaded
    if (puja == null || package == null || selectedOfferings == null) {
      // Already emitted error in orElse, just return
      return;
    }

    // Mock chadhava offerings - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      final now = DateTime.now();

      final offerings = [
        ChadhavaOfferingEntity(
          id: '1',
          title: 'Ekadashi Sampoorna Aaradhana',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          price: 21000, // 210 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
        ChadhavaOfferingEntity(
          id: '2',
          title: 'Kartik Purnima Special',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          price: 21000, // 210 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
        ChadhavaOfferingEntity(
          id: '3',
          title: 'Shivratri Special Offering',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
          price: 21000, // 210 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
        ),
      ];

      emit(
        PujaCartState.loaded(
          puja: puja!,
          package: package!,
          offerings: offerings,
          selectedOfferings: selectedOfferings!,
        ),
      );
    } catch (e) {
      emit(
        PujaCartState.error(
          message: 'Failed to load offerings: ${e.toString()}',
        ),
      );
    }
  }

  void _onOfferingAdded(OfferingAdded event, Emitter<PujaCartState> emit) {
    state.maybeWhen(
      loaded: (puja, package, offerings, selectedOfferings) {
        // Find offering gracefully without throwing exception
        ChadhavaOfferingEntity? offering;
        try {
          offering = offerings.firstWhere((o) => o.id == event.offeringId);
        } catch (e) {
          // Offering not found - emit error state instead of throwing
          emit(PujaCartState.error(message: 'Offering not found'));
          return;
        }

        // Check if offering is already selected
        if (selectedOfferings.any((o) => o.id == offering!.id)) {
          // Already selected, no need to add again
          return;
        }

        // Add offering to selected list
        final updatedOfferings = [...selectedOfferings, offering];
        emit(
          PujaCartState.loaded(
            puja: puja,
            package: package,
            offerings: offerings,
            selectedOfferings: updatedOfferings,
          ),
        );
      },
      orElse: () {
        // State is not loaded, cannot add offering
        emit(
          const PujaCartState.error(
            message: 'Cannot add offering: Cart not loaded',
          ),
        );
      },
    );
  }

  void _onOfferingRemoved(OfferingRemoved event, Emitter<PujaCartState> emit) {
    state.maybeWhen(
      loaded: (puja, package, offerings, selectedOfferings) {
        final updatedOfferings = selectedOfferings
            .where((o) => o.id != event.offeringId)
            .toList();

        emit(
          PujaCartState.loaded(
            puja: puja,
            package: package,
            offerings: offerings,
            selectedOfferings: updatedOfferings,
          ),
        );
      },
      orElse: () {},
    );
  }
}
