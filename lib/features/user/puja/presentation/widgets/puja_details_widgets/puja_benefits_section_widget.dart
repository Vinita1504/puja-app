import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/puja.dart';

/// Puja benefits section widget
///
/// Displays a list of puja benefits.
class PujaBenefitsSectionWidget extends StatelessWidget {
  final PujaEntity puja;

  const PujaBenefitsSectionWidget({
    super.key,
    required this.puja,
  });

  @override
  Widget build(BuildContext context) {
    if (puja.benefits.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Text(
            'Puja Benefits',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 12.h),
          // Benefits list
          ...puja.benefits.asMap().entries.map((entry) {
            final index = entry.key;
            final benefit = entry.value;
            final title = benefit['title'] as String? ?? '';
            final description = benefit['description'] as String? ?? '';
            final isLast = index == puja.benefits.length - 1;
            
            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bullet point
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, right: 10.w),
                    child: Container(
                      width: 5.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Benefit text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title.isNotEmpty)
                          Text(
                            title,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: context.colorScheme.onSurface,
                              fontSize: 14.sp,
                              height: 1.4,
                            ),
                          ),
                        if (description.isNotEmpty) ...[
                          SizedBox(height: 2.h),
                          Text(
                            description,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                              fontSize: 13.sp,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

