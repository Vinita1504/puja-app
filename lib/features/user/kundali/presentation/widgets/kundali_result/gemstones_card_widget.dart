import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/kundali_result.dart';

/// Gemstones card widget
///
/// Displays recommended gemstones (life stone, lucky stone, fortune stone)
/// in visually prominent badges with icons.
class GemstonesCardWidget extends StatelessWidget {
  /// Kundali result data
  final KundaliResult kundaliResult;

  const GemstonesCardWidget({
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
                Icons.diamond,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                'Recommended Gemstones',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Life Stone
          _GemstoneItem(
            label: 'Life Stone',
            gemstone: kundaliResult.lifeStone,
            color: Colors.red,
          ),
          SizedBox(height: 12.h),

          // Lucky Stone
          _GemstoneItem(
            label: 'Lucky Stone',
            gemstone: kundaliResult.luckyStone,
            color: Colors.orange,
          ),
          SizedBox(height: 12.h),

          // Fortune Stone
          _GemstoneItem(
            label: 'Fortune Stone',
            gemstone: kundaliResult.fortuneStone,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

/// Internal widget for displaying individual gemstone
class _GemstoneItem extends StatelessWidget {
  final String label;
  final String gemstone;
  final Color color;

  const _GemstoneItem({
    required this.label,
    required this.gemstone,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Label
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(width: 12.w),

        // Gemstone badge
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: color.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.diamond,
                  size: 14.sp,
                  color: color,
                ),
                SizedBox(width: 6.w),
                Flexible(
                  child: Text(
                    gemstone,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: color.withOpacity(0.9),
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

