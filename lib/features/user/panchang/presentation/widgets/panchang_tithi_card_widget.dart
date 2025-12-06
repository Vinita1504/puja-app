import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/datetime_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang tithi card widget
///
/// Displays detailed Tithi information with moon phase.
class PanchangTithiCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangTithiCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final tithi = panchang.tithi;
    final endTime = tithi.end.toFormattedTime();

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Moon phase image
          Container(
            width: 60.w,
            height: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: context.colorScheme.surfaceContainerHighest,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                'assets/images/panchange.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.dark_mode,
                    size: 32.sp,
                    color: context.colorScheme.onSurfaceVariant,
                  );
                },
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${tithi.type}-Paksha ${tithi.name}, ${panchang.day.name}',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Till $endTime',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  panchang.advancedDetails.masa.amantaName,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '${panchang.advancedDetails.masa.ritu}, ${panchang.advancedDetails.years.vikramSamvaat} (${panchang.advancedDetails.masa.ayana})',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

