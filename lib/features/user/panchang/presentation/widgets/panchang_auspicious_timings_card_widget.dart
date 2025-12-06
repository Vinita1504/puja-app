import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/panchang_entity.dart';
import 'panchang_timing_card_widget.dart';

/// Panchang auspicious timings card widget
///
/// Displays auspicious timings like Abhijit Muhurta.
class PanchangAuspiciousTimingsCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangAuspiciousTimingsCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final abhijit = panchang.advancedDetails.abhijitMuhurta;

    return Container(
      padding: EdgeInsets.all(16.w),
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
                'Auspicious Timings',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          PanchangTimingCardWidget(
            label: 'Abhijit Muhurta',
            timing: '${abhijit.start} - ${abhijit.end}',
            cardColor: Colors.green.shade100,
          ),
        ],
      ),
    );
  }
}

