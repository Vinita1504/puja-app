import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/review.dart';
import '../../bloc/review_card/review_card_bloc.dart';
import 'chadhava_review_card_widget.dart';

/// Review section widget for chadhava details
///
/// Displays a horizontal scrollable list of review cards with dynamic height.
class ChadhavaReviewSectionWidget extends StatelessWidget {
  final List<Review> reviews;

  const ChadhavaReviewSectionWidget({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    if (reviews.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reviews',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'No reviews yet. Be the first to share your experience!',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return BlocProvider(
      create: (context) => ReviewCardBloc(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Reviews',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // Horizontal ListView - height accommodates expanded card content
          // Cards dynamically size themselves based on text expansion
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Wrap(
                spacing: 12.w,
                children: reviews.map((review) => ChadhavaReviewCardWidget(review: review, width: 0.7.sw)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
