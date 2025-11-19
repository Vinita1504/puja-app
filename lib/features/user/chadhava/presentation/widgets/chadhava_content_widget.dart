import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import '../bloc/chadhava_list/chadhava_list_bloc.dart';
import '../bloc/chadhava_list/chadhava_list_state.dart';
import 'chadhava_card_widget.dart';

/// Chadhava content widget
///
/// Displays a list of chadhava offering cards.
/// Filters offerings based on selected category and search query.
class ChadhavaContentWidget extends StatelessWidget {
  const ChadhavaContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChadhavaListBloc, ChadhavaListState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
          loading: () => SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          loaded:
              (
                offerings,
                selectedCategory,
                searchQuery,
                categories,
                filteredOfferings,
              ) {
                if (filteredOfferings.isEmpty) {
                  return _buildEmptyState(context);
                }

                return _buildOfferingsList(context, filteredOfferings);
              },
          error: (message) => SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(32.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64.sp,
                      color: context.colorScheme.error,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Error loading offerings',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.error,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      message,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
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

  Widget _buildOfferingsList(BuildContext context, List filteredOfferings) {
    return SliverPadding(
      padding: EdgeInsets.only(bottom: 16.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final offering = filteredOfferings[index];
          return ChadhavaCardWidget(
            offering: offering,
            onBookTap: () {
              // Navigate to chadhava details page
              // Using offering ID as chadhava ID for now
              context.push("${AppRoutes.chadhavaDetails}?id=${offering.id}");
            },
          );
        }, childCount: filteredOfferings.length),
      ),
    );
  }
}
