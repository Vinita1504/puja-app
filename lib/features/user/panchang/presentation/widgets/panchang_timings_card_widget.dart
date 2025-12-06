import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang timings card widget
///
/// Displays Rahukaal, Gulika, and Yamakanta timings.
class PanchangTimingsCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangTimingsCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
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
                'Inauspicious Timings',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildTimingCard(
            context,
            'Rahukaal',
            panchang.rahukaal,
            Colors.pink.shade100,
          ),
          SizedBox(height: 12.h),
          _buildTimingCard(
            context,
            'Gulika',
            panchang.gulika,
            Colors.orange.shade100,
          ),
          SizedBox(height: 12.h),
          _buildTimingCard(
            context,
            'Yamakanta',
            panchang.yamakanta,
            Colors.pink.shade50,
          ),
        ],
      ),
    );
  }

  Widget _buildTimingCard(
    BuildContext context,
    String label,
    String timing,
    Color cardColor,
  ) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Text(
            '$label:',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(width: 8.w),
          Text(
            timing,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}

