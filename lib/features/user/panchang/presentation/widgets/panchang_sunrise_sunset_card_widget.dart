import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/string_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang sunrise sunset card widget
///
/// Displays Sunrise, Sunset, Moonrise, and Moonset in a card with icons.
class PanchangSunriseSunsetCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangSunriseSunsetCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final advanced = panchang.advancedDetails;

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
                'Sunrise-Sunset',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: _SunriseColumn(
                  time: advanced.sunRise,
                ),
              ),
              Container(
                width: 1.w,
                height: 60.h,
                color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
              ),
              Expanded(
                child: _SunsetColumn(
                  time: advanced.sunSet,
                ),
              ),
              Container(
                width: 1.w,
                height: 60.h,
                color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
              ),
              Expanded(
                child: _MoonriseColumn(
                  time: advanced.moonRise,
                ),
              ),
              Container(
                width: 1.w,
                height: 60.h,
                color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
              ),
              Expanded(
                child: _MoonsetColumn(
                  time: advanced.moonSet,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Sunrise column widget
class _SunriseColumn extends StatelessWidget {
  final String time;

  const _SunriseColumn({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.wb_sunny,
          size: 32.sp,
          color: context.colorScheme.primary,
        ),
        SizedBox(height: 8.h),
        Text(
          'Sunrise',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          time.removeSecondsFromTime(),
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

/// Sunset column widget
class _SunsetColumn extends StatelessWidget {
  final String time;

  const _SunsetColumn({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.wb_twilight,
          size: 32.sp,
          color: context.colorScheme.primary,
        ),
        SizedBox(height: 8.h),
        Text(
          'Sunset',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          time.removeSecondsFromTime(),
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

/// Moonrise column widget
class _MoonriseColumn extends StatelessWidget {
  final String time;

  const _MoonriseColumn({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.nightlight_round,
          size: 32.sp,
          color: context.colorScheme.primary,
        ),
        SizedBox(height: 8.h),
        Text(
          'Moonrise',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          time.removeSecondsFromTime(),
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

/// Moonset column widget
class _MoonsetColumn extends StatelessWidget {
  final String time;

  const _MoonsetColumn({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.nightlight,
          size: 32.sp,
          color: context.colorScheme.primary,
        ),
        SizedBox(height: 8.h),
        Text(
          'Moonset',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          time.removeSecondsFromTime(),
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

