import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/chadhava_offering.dart';
import '../../../deity/domain/entities/deity.dart';

/// Provider for managing chadhava offerings list
///
/// Uses StateProvider to manage the list of chadhava offerings.
/// Initially populated with mock data.
final chadhavaOfferingsProvider = StateProvider<List<ChadhavaOfferingEntity>>((ref) {
  // Mock data - replace with repository call when available
  final now = DateTime.now();
  
  return [
    ChadhavaOfferingEntity(
      id: '1',
      title: 'Ekadashi Sampoorna Aaradhana Khatu Shyam Chadhava',
      description: 'Choose an offering Offer Fresh Flowers and Garland Offer fresh seasonal flowers and beautiful garland',
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
      description: 'Special offering for Kartik Purnima with traditional items and blessings',
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
});

/// Provider for managing selected category filter
///
/// Uses StateProvider to manage the selected category name.
/// Default value is "All" (shows all offerings).
final selectedCategoryProvider = StateProvider<String?>((ref) => 'All');

/// Provider for managing search query
///
/// Uses StateProvider to manage the search text input.
/// Default value is empty string.
final searchQueryProvider = StateProvider<String>((ref) => '');

/// List of available categories for filtering
final chadhavaCategoriesProvider = Provider<List<String>>((ref) {
  return [
    'All',
    'Kartik Purnima',
    'Ahuti Seva',
    'Shani Temp',
  ];
});

