import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/kundali_result.dart';
import 'attribute_item_widget.dart';

/// Nakshatra card widget
///
/// Displays nakshatra-related information including nakshatra name,
/// nakshatra lord, pada, and ascendant nakshatra.
class NakshatraCardWidget extends StatelessWidget {
  /// Kundali result data
  final KundaliResult kundaliResult;

  const NakshatraCardWidget({
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
                Icons.auto_awesome,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                'Nakshatra Details',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Nakshatra attributes
          AttributeItemWidget(
            label: 'Nakshatra',
            value: kundaliResult.nakshatra,
          ),
          SizedBox(height: 16.h),
          AttributeItemWidget(
            label: 'Nakshatra Lord',
            value: kundaliResult.nakshatraLord,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Nakshatra Pada',
                  value: kundaliResult.nakshatraPada.toString(),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Ascendant Nakshatra',
                  value: kundaliResult.ascendantNakshatra,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

