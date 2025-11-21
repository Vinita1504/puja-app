import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'home_v2_astro_tool_button_widget.dart';
import 'home_v2_talk_astrologer_button_widget.dart';

/// Home V2 astro tools widget
///
/// Displays a section with astro tools header and a grid of astro tool buttons
/// with a large image on the right side.
/// Used in the white background section of the home page v2.
class HomeV2AstroToolsWidget extends StatelessWidget {
  const HomeV2AstroToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.surface,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Text(
            'Astro Tools',
            style: context.textTheme.titleLarge?.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12.h),
          // Content row: buttons grid on left, image on right
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: Grid of astro tool buttons
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    // First row: Muharat Finder, Daily Panchang
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 90.h,
                            child: const HomeV2AstroToolButtonWidget(
                              iconPath: 'assets/images/muhurat-finder.png',
                              title: 'Muhurat Finder',
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: SizedBox(
                            height: 90.h,
                            child: const HomeV2AstroToolButtonWidget(
                              iconPath: 'assets/images/chadhava-service.png',
                              title: 'Daily Panchang',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    // Second row: Dosha Finder, Kundli Matching
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 90.h,
                            child: const HomeV2AstroToolButtonWidget(
                              iconPath: 'assets/images/dosha-finder.png',
                              title: 'Dosha Finder',
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: SizedBox(
                            height: 90.h,
                            child: const HomeV2AstroToolButtonWidget(
                              iconPath: 'assets/images/kundali-matching.png',
                              title: 'Kundali Matching',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    // Third row: Talk Astrologer (special full-width button)
                    const HomeV2TalkAstrologerButtonWidget(
                      imagePath: 'assets/images/talk-astro.png',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              // Right side: Large image
              Expanded(
                flex: 2,
                child: Container(
                  height: 270.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      'assets/images/astro.png',
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
        ],
      ),
    );
  }
}
