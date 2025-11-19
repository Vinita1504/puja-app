import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/chadhava_offering.dart';
import '../../../../deity/domain/entities/deity.dart';
import 'chadhava_list_event.dart';
import 'chadhava_list_state.dart';

/// Chadhava list BLoC
///
/// Manages the state of the chadhava offerings list page,
/// including loading offerings, filtering by category, and search functionality.
class ChadhavaListBloc extends Bloc<ChadhavaListEvent, ChadhavaListState> {
  ChadhavaListBloc() : super(const ChadhavaListState.initial()) {
    on<ChadhavaListLoaded>(_onChadhavaListLoaded);
    on<CategorySelected>(_onCategorySelected);
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }

  /// Static list of available categories
  static const List<String> _categories = [
    'All',
    'Kartik Purnima',
    'Ahuti Seva',
    'Shani Temp',
  ];

  Future<void> _onChadhavaListLoaded(
    ChadhavaListLoaded event,
    Emitter<ChadhavaListState> emit,
  ) async {
    emit(const ChadhavaListState.loading());

    // Mock data - replace with repository call when available
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      final now = DateTime.now();

      final offerings = [
        ChadhavaOfferingEntity(
          id: '1',
          title: 'Ekadashi Sampoorna Aaradhana Khatu Shyam Chadhava',
          description:
              'Choose an offering Offer Fresh Flowers and Garland Offer fresh seasonal flowers and beautiful garland',
          price: 50000, // 500 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/shivji.png',
          deities: [
            DeityEntity(
              id: 'd1',
              name: 'Khatu Shyam',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
            DeityEntity(
              id: 'd2',
              name: 'Shiva',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
            DeityEntity(
              id: 'd3',
              name: 'Lakshmi',
              imageUrl: 'assets/images/lakshmi-puja.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
            DeityEntity(
              id: 'd4',
              name: 'Ganesha',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
            DeityEntity(
              id: 'd5',
              name: 'Radha Krishna',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
          ],
        ),
        ChadhavaOfferingEntity(
          id: '2',
          title: 'Kartik Purnima Special Chadhava',
          description:
              'Special offering for Kartik Purnima with traditional items and blessings',
          price: 75000, // 750 rupees in paise
          isActive: true,
          createdAt: now,
          updatedAt: now,
          imageUrl: 'assets/images/rudra-abhishek.png',
          deities: [
            DeityEntity(
              id: 'd1',
              name: 'Shiva',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
            DeityEntity(
              id: 'd2',
              name: 'Vishnu',
              imageUrl: 'assets/images/shivji.png',
              isActive: true,
              createdAt: now,
              updatedAt: now,
            ),
          ],
        ),
      ];

      final filteredOfferings = _filterOfferings(
        offerings: offerings,
        category: 'All',
        searchQuery: '',
      );

      emit(
        ChadhavaListState.loaded(
          offerings: offerings,
          selectedCategory: 'All',
          searchQuery: '',
          categories: _categories,
          filteredOfferings: filteredOfferings,
        ),
      );
    } catch (e) {
      emit(
        ChadhavaListState.error(
          message: 'Failed to load chadhava offerings: ${e.toString()}',
        ),
      );
    }
  }

  void _onCategorySelected(
    CategorySelected event,
    Emitter<ChadhavaListState> emit,
  ) {
    state.maybeWhen(
      loaded: (offerings, _, searchQuery, categories, __) {
        final filteredOfferings = _filterOfferings(
          offerings: offerings,
          category: event.category,
          searchQuery: searchQuery,
        );

        emit(
          ChadhavaListState.loaded(
            offerings: offerings,
            selectedCategory: event.category,
            searchQuery: searchQuery,
            categories: categories,
            filteredOfferings: filteredOfferings,
          ),
        );
      },
      orElse: () {},
    );
  }

  void _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<ChadhavaListState> emit,
  ) {
    state.maybeWhen(
      loaded: (offerings, selectedCategory, _, categories, __) {
        final filteredOfferings = _filterOfferings(
          offerings: offerings,
          category: selectedCategory,
          searchQuery: event.query,
        );

        emit(
          ChadhavaListState.loaded(
            offerings: offerings,
            selectedCategory: selectedCategory,
            searchQuery: event.query,
            categories: categories,
            filteredOfferings: filteredOfferings,
          ),
        );
      },
      orElse: () {},
    );
  }

  /// Filter offerings based on category and search query
  List<ChadhavaOfferingEntity> _filterOfferings({
    required List<ChadhavaOfferingEntity> offerings,
    required String category,
    required String searchQuery,
  }) {
    return offerings.where((offering) {
      // Filter by category
      if (category != 'All') {
        final matchesCategory =
            offering.title.toLowerCase().contains(category.toLowerCase()) ||
            offering.description.toLowerCase().contains(category.toLowerCase());
        if (!matchesCategory) {
          return false;
        }
      }

      // Filter by search query
      if (searchQuery.isNotEmpty) {
        final query = searchQuery.toLowerCase();
        final matchesSearch =
            offering.title.toLowerCase().contains(query) ||
            offering.description.toLowerCase().contains(query);
        if (!matchesSearch) {
          return false;
        }
      }

      return true;
    }).toList();
  }
}
