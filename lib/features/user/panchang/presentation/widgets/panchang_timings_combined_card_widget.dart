import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang timings combined card widget
///
/// Displays both auspicious and inauspicious timings in a 2x2 grid layout.
/// Responsive for different screen sizes.
class PanchangTimingsCombinedCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangTimingsCombinedCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final abhijit = panchang.advancedDetails.abhijitMuhurta;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title outside the card
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
                'Auspicious-Inauspicious Timings',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ),
            Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colorScheme.primary.withValues(alpha: 0.1),
              ),
              child: Icon(
                Icons.help_outline,
                size: 18.sp,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        // Card with 2x2 Grid layout
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
              width: 0.5.w,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate responsive spacing
              final spacing = 12.w;
              final cardHeight = 100.h;
              
              return Column(
                children: [
                  // Top row
                  Row(
                    children: [
                      Expanded(
                        child: _AuspiciousTimingCard(
                          label: 'Auspicious Timings',
                          timing: '${abhijit.start} - ${abhijit.end}',
                          height: cardHeight,
                        ),
                      ),
                      SizedBox(width: spacing),
                      Expanded(
                        child: _GulikKaalCard(
                          timing: panchang.gulika,
                          height: cardHeight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: spacing),
                  // Bottom row
                  Row(
                    children: [
                      Expanded(
                        child: _RahuKaalCard(
                          timing: panchang.rahukaal,
                          height: cardHeight,
                        ),
                      ),
                      SizedBox(width: spacing),
                      Expanded(
                        child: _YamghantKaalCard(
                          timing: panchang.yamakanta,
                          height: cardHeight,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

/// Auspicious timing card widget
class _AuspiciousTimingCard extends StatelessWidget {
  final String label;
  final String timing;
  final double height;

  const _AuspiciousTimingCard({
    required this.label,
    required this.timing,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.green.shade600,
            ),
          ),
          SizedBox(height: 4.h),
          Flexible(
            child: Text(
              timing,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Gulik Kaal card widget
class _GulikKaalCard extends StatelessWidget {
  final String timing;
  final double height;

  const _GulikKaalCard({
    required this.timing,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gulik Kaal',
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.orange.shade600,
            ),
          ),
          SizedBox(height: 4.h),
          Flexible(
            child: Text(
              timing,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Rahu Kaal card widget
class _RahuKaalCard extends StatelessWidget {
  final String timing;
  final double height;

  const _RahuKaalCard({
    required this.timing,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rahu Kaal',
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.pink.shade600,
            ),
          ),
          SizedBox(height: 4.h),
          Flexible(
            child: Text(
              timing,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Yamghant Kaal card widget
class _YamghantKaalCard extends StatelessWidget {
  final String timing;
  final double height;

  const _YamghantKaalCard({
    required this.timing,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Yamghant Kaal',
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.pink.shade600,
            ),
          ),
          SizedBox(height: 4.h),
          Flexible(
            child: Text(
              timing,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
