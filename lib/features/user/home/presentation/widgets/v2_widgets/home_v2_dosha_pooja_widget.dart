import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import '../dosh_card_widget.dart';

/// Home V2 Dosha Nivaran Pooja widget
///
/// Displays a section with Dosha Nivaran Pooja information, goddess image,
/// and a horizontal scrollable list of dosha cards.
/// Used in the white background section of the home page v2.
class HomeV2DoshaPoojaWidget extends StatelessWidget {
  const HomeV2DoshaPoojaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      color: Color(0xFF00B69B).withValues(alpha: 0.1),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top row: Title/description on left, image on right
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: Title and description
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dosha Nivaran Pooja',
                        style: context.textTheme.headlineSmall?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Dosh Pooja is a ritual performed to remove planetary or karmic doshas, bringing peace, prosperity, and protection from obstacles',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                          fontSize: 14.sp,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              // Right side: Goddess Durga image
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    'assets/images/durga-maa.png',
                    height: 120.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
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
          SizedBox(height: 12.h),
          // Three cards in one row - no scrolling
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80.h,
                  margin: EdgeInsets.zero,
                  child: DoshCardWidget(
                    imagePath: 'assets/images/kaal-dosh.png',
                    title: 'Tirth Yaag Dosh',
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Container(
                  height: 80.h,
                  margin: EdgeInsets.zero,
                  child: DoshCardWidget(
                    imagePath: 'assets/images/mangal-dosh.png',
                    title: 'Mangal Dosh',
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Container(
                  height: 80.h,
                  margin: EdgeInsets.zero,
                  child: DoshCardWidget(
                    imagePath: 'assets/images/kaal-dosh.png',
                    title: 'Shani Dosh',
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
