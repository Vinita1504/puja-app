import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/datetime_extension.dart';
import '../../domain/entities/panchang_entity.dart';
import 'panchang_small_info_card_widget.dart';

/// Panchang yoga card widget
///
/// Displays Yoga details in a compact, attractive layout.
class PanchangYogaCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangYogaCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final yoga = panchang.yoga;
    final endTime = yoga.end.toFormattedTime();

    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 0.5.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4.w,
                height: 20.h,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              SizedBox(width: 12.w),
              Text(
                'Yoga',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Small cards in 2 columns
          Row(
            children: [
              Expanded(
                child: PanchangSmallInfoCardWidget(
                  label: 'Name',
                  value: yoga.name,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: PanchangSmallInfoCardWidget(
                  label: 'Till',
                  value: endTime,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          PanchangSmallInfoCardWidget(
            label: 'Meaning',
            value: yoga.meaning,
          ),
        ],
      ),
    );
  }
}
