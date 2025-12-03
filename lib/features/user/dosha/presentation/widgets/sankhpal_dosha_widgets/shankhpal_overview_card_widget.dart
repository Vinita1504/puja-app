import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/shankhpal_dosha_result.dart';

/// Shankhpal overview card widget
///
/// Displays overview information including Rahu/Ketu axis and direction.
class ShankhpalOverviewCardWidget extends StatelessWidget {
  final ShankhpalDoshaResult shankhpalDoshaResult;

  const ShankhpalOverviewCardWidget({
    super.key,
    required this.shankhpalDoshaResult,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
          width: 0.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 16.h),
          _OverviewField(
            label: 'Rahu/Ketu Axis',
            value: shankhpalDoshaResult.rahuKetuAxis,
          ),
          SizedBox(height: 12.h),
          _OverviewField(
            label: 'Direction',
            value: shankhpalDoshaResult.direction,
          ),
        ],
      ),
    );
  }
}

class _OverviewField extends StatelessWidget {
  final String label;
  final String value;

  const _OverviewField({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120.w,
          child: Text(
            label,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Text(
          '→',
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            value,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

