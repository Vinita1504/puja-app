import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expandable_text/expandable_text.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/chadhava.dart';
import '../../../domain/entities/review.dart';

/// Chadhava description widget
///
/// Displays the chadhava title, location, rating, and description.
class ChadhavaDescriptionWidget extends StatelessWidget {
  final ChadhavaEntity chadhava;
  final List<Review> reviews;
  final VoidCallback? onSharePressed;

  const ChadhavaDescriptionWidget({
    super.key,
    required this.chadhava,
    required this.reviews,
    this.onSharePressed,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate average rating from reviews
    double averageRating = 0.0;
    if (reviews.isNotEmpty) {
      final totalRating = reviews.fold<int>(
        0,
        (sum, review) => sum + review.rating,
      );
      averageRating = totalRating / reviews.length;
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with share button
          Row(
            children: [
              Expanded(
                child: Text(
                  chadhava.title,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
              if (onSharePressed != null)
                IconButton(
                  icon: Icon(Icons.share, color: Colors.orange, size: 24.sp),
                  onPressed: onSharePressed,
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
            ],
          ),
          SizedBox(height: 4.h),
          // Location
          Text(
            'Gurugram',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 8.h),
          // Rating with stars and review count
          if (reviews.isNotEmpty)
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 18.sp),
                    SizedBox(width: 4.w),
                    Text(
                      averageRating.toStringAsFixed(1),
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Text(
                  '(${reviews.length} ${reviews.length == 1 ? 'review' : 'reviews'})',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            )
          else
            Row(
              children: [
                Icon(
                  Icons.star_outline,
                  color: context.colorScheme.onSurfaceVariant,
                  size: 18.sp,
                ),
                SizedBox(width: 4.w),
                Text(
                  'No reviews yet',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          SizedBox(height: 16.h),
          // Description with expandable text
          ExpandableText(
            chadhava.description,
            expandText: 'Read More',
            collapseText: 'Read Less',
            maxLines: 3,
            linkColor: Colors.orange,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
