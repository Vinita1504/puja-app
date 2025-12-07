import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/kundali_result.dart';
import 'attribute_item_widget.dart';

/// Birth panchang card widget
///
/// Displays panchang elements at the time of birth including
/// tithi, karana, and yoga.
class BirthPanchangCardWidget extends StatelessWidget {
  /// Kundali result data
  final KundaliResult kundaliResult;

  const BirthPanchangCardWidget({
    super.key,
    required this.kundaliResult,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card title with icon
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                'Birth Panchang',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Panchang attributes
          AttributeItemWidget(
            label: 'Tithi',
            value: kundaliResult.tithi,
          ),
          SizedBox(height: 16.h),
          AttributeItemWidget(
            label: 'Karana',
            value: kundaliResult.karana,
          ),
          SizedBox(height: 16.h),
          AttributeItemWidget(
            label: 'Yoga',
            value: kundaliResult.yoga,
          ),
        ],
      ),
    );
  }
}

