import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expandable_text/expandable_text.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/review.dart';
import '../../bloc/review_card/review_card_bloc.dart';
import '../../bloc/review_card/review_card_event.dart';
import '../../bloc/review_card/review_card_state.dart';

/// Chadhava review card widget
///
/// Displays a user review with profile image, name, rating, and expandable review text.
/// Uses LayoutBuilder for responsive sizing and ExpandableText plugin for text expansion.
/// Uses BLoC for state management instead of setState.
class ChadhavaReviewCardWidget extends StatelessWidget {
  final Review review;

  /// Optional fixed width for horizontal layouts
  final double? width;

  const ChadhavaReviewCardWidget({super.key, required this.review, this.width});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewCardBloc, ReviewCardState>(
      builder: (context, state) {
        final isExpanded = state.expandedReviewIds.contains(review.id);

        return LayoutBuilder(
          builder: (context, constraints) {
            // Calculate responsive card width
            double cardWidth;
            if (width != null) {
              cardWidth = width!;
            } else if (constraints.maxWidth.isFinite &&
                constraints.maxWidth > 0) {
              // Use available width with some margin
              cardWidth = constraints.maxWidth - 32.w;
            } else {
              // Fallback to screen width percentage
              cardWidth = 0.9.sw;
            }

            // Ensure minimum and maximum width constraints
            cardWidth = cardWidth.clamp(280.w, double.infinity);

            final card = Container(
              margin: EdgeInsets.symmetric(
                horizontal: width == null ? 16.w : 0,
                vertical: 8.h,
              ),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: context.colorScheme.outlineVariant.withValues(
                    alpha: 0.5,
                  ),
                  width: 1.w,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile image
                      CircleAvatar(
                        radius: 24.r,
                        backgroundColor: context.colorScheme.primaryContainer,
                        backgroundImage: review.userImageUrl != null
                            ? AssetImage(review.userImageUrl!)
                            : null,
                        child: review.userImageUrl == null
                            ? Icon(
                                Icons.person,
                                color: context.colorScheme.onPrimaryContainer,
                                size: 24.sp,
                              )
                            : null,
                      ),
                      SizedBox(width: 12.w),
                      // Review content
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // User name
                            Text(
                              review.userName,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            // Rating stars
                            Row(
                              children: List.generate(
                                review.rating,
                                (index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // Expandable review text using ExpandableText plugin
                  ExpandableText(
                    review.reviewText,
                    expandText: 'Read More',
                    collapseText: 'Read Less',
                    maxLines: 3,
                    linkColor: Colors.orange,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurface,
                    ),
                    expanded: isExpanded,
                    onExpandedChanged: (expanded) {
                      if (expanded != isExpanded) {
                        context.read<ReviewCardBloc>().add(
                          ReviewCardEvent.reviewExpansionToggled(
                            reviewId: review.id,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            );

            // Wrap in SizedBox with calculated width if width is provided
            if (width != null) {
              return SizedBox(width: cardWidth, child: card);
            }

            return card;
          },
        );
      },
    );
  }
}
