import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/kundali_result.dart';
import 'attribute_item_widget.dart';

/// Vedic attributes card widget
///
/// Displays vedic attributes including gana, yoni, vasya,
/// nadi, varna, paya, and tatva.
class VedicAttributesCardWidget extends StatelessWidget {
  /// Kundali result data
  final KundaliResult kundaliResult;

  const VedicAttributesCardWidget({
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
                Icons.workspaces,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                'Vedic Attributes',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Grid layout for attributes - 2 columns
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Gana',
                  value: kundaliResult.gana,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Yoni',
                  value: kundaliResult.yoni,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Vasya',
                  value: kundaliResult.vasya,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Nadi',
                  value: kundaliResult.nadi,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: AttributeItemWidget(
                  label: 'Varna',
                  value: kundaliResult.varna,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: AttributeItemWidget(
                  label: 'Paya',
                  value: kundaliResult.paya,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          AttributeItemWidget(
            label: 'Tatva',
            value: kundaliResult.tatva,
          ),
        ],
      ),
    );
  }
}

