import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Lucky color card widget
///
/// Displays a card showing lucky colors with color swatches.
class LuckyColorCardWidget extends StatelessWidget {
  final List<String> luckyColors;

  const LuckyColorCardWidget({
    super.key,
    required this.luckyColors,
  });

  Color _getColorFromString(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'white':
        return Colors.white;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'silver':
        return Colors.grey.shade400;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9C4), // Light yellow background
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lucky Color',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: luckyColors.map((colorName) {
              return Container(
                margin: EdgeInsets.only(right: 8.w),
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  color: _getColorFromString(colorName),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1.w,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

