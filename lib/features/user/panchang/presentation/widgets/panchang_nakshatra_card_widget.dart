import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/datetime_extension.dart';
import '../../domain/entities/panchang_entity.dart';
import 'panchang_small_info_card_widget.dart';

/// Panchang nakshatra card widget
///
/// Displays Nakshatra details with auspicious directions in a compact, attractive layout.
class PanchangNakshatraCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangNakshatraCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final nakshatra = panchang.nakshatra;
    final endTime = nakshatra.end.toFormattedTime();

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
                'Nakshatra',
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
                  value: nakshatra.name,
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
          Row(
            children: [
              Expanded(
                child: PanchangSmallInfoCardWidget(
                  label: 'Lord',
                  value: nakshatra.lord,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: PanchangSmallInfoCardWidget(
                  label: 'Deity',
                  value: nakshatra.diety,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          PanchangSmallInfoCardWidget(
            label: 'Auspicious Directions',
            value: nakshatra.auspiciousDisha.join(', '),
          ),
        ],
      ),
    );
  }
}
