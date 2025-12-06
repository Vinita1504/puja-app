import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/datetime_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang advanced details card widget
///
/// Displays masa, years, and other advanced information in a card structure.
class PanchangAdvancedDetailsCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangAdvancedDetailsCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final advanced = panchang.advancedDetails;
    final masa = advanced.masa;
    final years = advanced.years;

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
              Expanded(
                child: Text(
                  'Complete Panchang',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.help_outline,
                  size: 20.sp,
                  color: context.colorScheme.primary,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // Date and Tithi Card
          _DateTithiCard(
            tithi: panchang.tithi,
            nakshatra: panchang.nakshatra,
            yoga: panchang.yoga,
            karana: panchang.karana,
          ),
          SizedBox(height: 12.h),
          // Month and Samvat Card
          _MonthSamvatCard(
            masa: masa,
            years: years,
          ),
          SizedBox(height: 12.h),
          // Planetary Positions Card
          _PlanetaryPositionsCard(
            panchang: panchang,
            advanced: advanced,
            masa: masa,
          ),
        ],
      ),
    );
  }
}

/// Date and Tithi card widget
class _DateTithiCard extends StatelessWidget {
  final TithiEntity tithi;
  final NakshatraEntity nakshatra;
  final YogaEntity yoga;
  final KaranaEntity karana;

  const _DateTithiCard({
    required this.tithi,
    required this.nakshatra,
    required this.yoga,
    required this.karana,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${tithi.type}-Paksha ${tithi.name} (${tithi.name} Tithi) ${tithi.end.toFormattedTime()} Till',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Nakshatra',
                  value: '${nakshatra.name} Till ${nakshatra.end.toFormattedTime()}',
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Yoga',
                  value: '${yoga.name} Till ${yoga.end.toFormattedTime()}',
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Karana',
                  value: '${karana.name} Till ${karana.end.toFormattedTime()}',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Month and Samvat card widget
class _MonthSamvatCard extends StatelessWidget {
  final MasaEntity masa;
  final YearsEntity years;

  const _MonthSamvatCard({
    required this.masa,
    required this.years,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Month Amanta',
                  value: masa.amantaName,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Month Purnimanta',
                  value: masa.purnimantaName,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Vikram Samvat',
                  value: '${years.vikramSamvaat} (${masa.ayana})',
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Shaka Samvat',
                  value: '${years.saka} (${years.sakaSamvaatName})',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Planetary positions card widget
class _PlanetaryPositionsCard extends StatelessWidget {
  final PanchangEntity panchang;
  final AdvancedDetailsEntity advanced;
  final MasaEntity masa;

  const _PlanetaryPositionsCard({
    required this.panchang,
    required this.advanced,
    required this.masa,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Sun Sign',
                  value: panchang.sunPosition.zodiac,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Moon Sign',
                  value: panchang.rasi.name,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Dishashool',
                  value: advanced.dishaShool,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Moon placement',
                  value: advanced.moonYoginiNivas,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Season',
                  value: masa.ritu,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _InfoColumnWidget(
                  label: 'Ayana',
                  value: masa.ayana,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Info column widget
class _InfoColumnWidget extends StatelessWidget {
  final String label;
  final String value;

  const _InfoColumnWidget({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
