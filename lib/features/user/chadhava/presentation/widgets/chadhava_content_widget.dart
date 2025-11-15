import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../providers/chadhava_providers.dart';
import 'chadhava_offering_card_widget.dart';

/// Chadhava content widget
///
/// Displays a list of chadhava offering cards.
/// Filters offerings based on selected category and search query.
class ChadhavaContentWidget extends ConsumerWidget {
  const ChadhavaContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerings = ref.watch(chadhavaOfferingsProvider);
    final selectedCategory = ref.watch(selectedCategoryProvider);
    final searchQuery = ref.watch(searchQueryProvider);

    // Filter offerings
    final filteredOfferings = offerings.where((offering) {
      // Filter by category
      if (selectedCategory != null && selectedCategory != 'All') {
        // Check if offering title or description contains category name
        final matchesCategory = offering.title
                .toLowerCase()
                .contains(selectedCategory.toLowerCase()) ||
            offering.description
                .toLowerCase()
                .contains(selectedCategory.toLowerCase());
        if (!matchesCategory) {
          return false;
        }
      }

      // Filter by search query
      if (searchQuery.isNotEmpty) {
        final query = searchQuery.toLowerCase();
        final matchesSearch = offering.title.toLowerCase().contains(query) ||
            offering.description.toLowerCase().contains(query);
        if (!matchesSearch) {
          return false;
        }
      }

      return true;
    }).toList();

    if (filteredOfferings.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(32.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_off,
                  size: 64.sp,
                  color: context.colorScheme.onSurfaceVariant,
                ),
                SizedBox(height: 16.h),
                Text(
                  'No offerings found',
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Try adjusting your filters or search query',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.only(bottom: 16.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final offering = filteredOfferings[index];
            return ChadhavaOfferingCardWidget(
              offering: offering,
              onBookTap: () {
                // TODO: Implement booking navigation
              },
            );
          },
          childCount: filteredOfferings.length,
        ),
      ),
    );
  }
}

