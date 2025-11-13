import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Today's Panchang section widget
///
/// Displays astrological information including date, tithi, weekday,
/// nakshatra, yoga, and sun sign on a light orange background.
/// Features a two-column layout with Panchang details on the left
/// and Lord Shiva image on the right.
class PanchangSectionWidget extends StatelessWidget {
  /// User's name for personalized greeting
  final String userName;

  const PanchangSectionWidget({super.key, this.userName = 'Rahul'});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            context.colorScheme.primary.withValues(alpha: 0.6),
            context.colorScheme.surface,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greeting section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Center(
              child: Text(
                'Om Namha Shivaya, $userName',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Main content: Panchang details and Shiva image
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side: Panchang details
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Panchang",
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: context.colorScheme.onSurface,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      _PanchangItem(
                        label: 'Date:',
                        value: 'Friday, 31 October 2025',
                      ),
                      SizedBox(height: 6.h),
                      _PanchangItem(
                        label: 'Tithi:',
                        value:
                            'Shukla Paksha Navami (9th day of the waxing moon)',
                      ),
                      SizedBox(height: 6.h),
                      _PanchangItem(
                        label: 'Weekday:',
                        value: 'Friday (Shukravar)',
                      ),
                      SizedBox(height: 6.h),
                      _PanchangItem(
                        label: 'Nakshatra:',
                        value: 'Dhanishtha till 18:36, then Shatabhisha',
                      ),
                      SizedBox(height: 6.h),
                      _PanchangItem(label: 'Yoga:', value: 'Vriddhi Yoga'),
                      SizedBox(height: 6.h),
                      _PanchangItem(label: 'Sun Sign:', value: 'Libra (Tula)'),
                    ],
                  ),
                ),
                SizedBox(width: 12.w),
                // Right side: Shiva image
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 180.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        'assets/images/shivji.png',
                        fit: BoxFit.contain,

                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: context.colorScheme.surfaceContainerLowest,
                            child: const Icon(Icons.image_not_supported),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}

/// Private widget for displaying panchang item with label and value
class _PanchangItem extends StatelessWidget {
  final String label;
  final String value;

  const _PanchangItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: context.textTheme.bodyMedium?.copyWith(
          fontSize: 13.sp,
          height: 1.4,
        ),
        children: [
          TextSpan(
            text: label,
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              height: 1.4,
            ),
          ),
          TextSpan(
            text: ' $value',
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
