import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Home V2 recommended pooja widget
///
/// Displays a section with recommended pooja header and a featured pooja card.
/// Used in the white background section of the home page v2.
class HomeV2RecommendedPoojaWidget extends StatelessWidget {
  const HomeV2RecommendedPoojaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.surface,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Pooja',
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to all recommended poojas
                },
                child: Text(
                  'View All',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          // Pooja recommendation card
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFF0),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: context.colorScheme.outlineVariant.withValues(
                    alpha: 0.3,
                  ),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: EdgeInsets.all(14.w),
            child: Row(
              children: [
                // Left side: Title and description
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gauri Pooja',
                        style: context.textTheme.titleLarge?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Gauri Pooja is a devotional ritual to honor Goddess Gauri, seeking marital bliss, and fertility blessings',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontSize: 14.sp,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                // Right side: Goddess Gauri image
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        'assets/images/rudra-abhishek.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: context.colorScheme.surfaceContainerLowest,
                            child: Icon(
                              Icons.image_not_supported,
                              size: 48.sp,
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
