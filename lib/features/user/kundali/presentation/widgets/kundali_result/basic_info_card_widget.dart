import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/kundali_result.dart';
import 'attribute_item_widget.dart';

/// Basic info card widget
///
/// Displays basic kundali information including name start,
/// ascendant sign, sun sign, rasi, and rasi lord.
class BasicInfoCardWidget extends StatelessWidget {
  /// Kundali result data
  final KundaliResult kundaliResult;

  const BasicInfoCardWidget({
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
                Icons.account_circle,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                'Basic Information',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Grid layout for attributes
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Name Start',
                  value: kundaliResult.nameStart,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Ascendant Sign',
                  value: kundaliResult.ascendantSign,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Sun Sign',
                  value: kundaliResult.sunSign,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Rasi',
                  value: kundaliResult.rasi,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          AttributeItemWidget(
            label: 'Rasi Lord',
            value: kundaliResult.rasiLord,
          ),
        ],
      ),
    );
  }
}

