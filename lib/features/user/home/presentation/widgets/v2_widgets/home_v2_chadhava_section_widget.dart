import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'home_v2_chadhava_deity_icon_widget.dart';

/// Home V2 chadhava section widget
///
/// Displays a section with chadhava header and a featured chadhava card.
/// Used in the white background section of the home page v2.
class HomeV2ChadhavaSectionWidget extends StatelessWidget {
  const HomeV2ChadhavaSectionWidget({super.key});

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
                'Chadhava',
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to all chadhava
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
          // Chadhava card
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFF0),
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
            padding: EdgeInsets.all(16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side: Title, description, and deity icons
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ekadashi Sampoorna Aaradhana Khatu Shyam Chadhava',
                        style: context.textTheme.titleMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      ExpandableText(
                        'Choose an offering Offer Fresh Flowers and Garland Offer fresh seasonal flowers and beautiful garland',
                        expandText: 'Read More.',
                        collapseText: 'Read Less',
                        maxLines: 3,
                        linkColor: context.colorScheme.primary,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Chadhava For',
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      // Wrap of deity icons for better responsiveness
                      Wrap(
                        spacing: 12.w,
                        runSpacing: 8.h,
                        children: [
                          HomeV2ChadhavaDeityIconWidget(
                            imagePath: 'assets/icons/chadhava.png',
                            size: 40.w,
                          ),
                          HomeV2ChadhavaDeityIconWidget(
                            imagePath: 'assets/icons/chadhava.png',
                            size: 40.w,
                          ),
                          HomeV2ChadhavaDeityIconWidget(
                            imagePath: 'assets/icons/chadhava.png',
                            size: 40.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                // Right side: Deity image
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      'assets/images/lakshmi-puja.png',
                      height: 210.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceContainerLowest,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
