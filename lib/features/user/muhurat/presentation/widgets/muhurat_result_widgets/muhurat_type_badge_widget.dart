import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Muhurat type badge widget
///
/// Displays a badge showing the type of muhurat (Good, Auspicious, Inauspicious)
/// with appropriate colors and asset images.
class MuhuratTypeBadgeWidget extends StatelessWidget {
  /// Type of muhurat (Good, Auspicious, Inauspicious)
  final String type;

  const MuhuratTypeBadgeWidget({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final badgeConfig = _getBadgeConfig(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: badgeConfig.backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            badgeConfig.imagePath,
            width: 14.w,
            height: 14.w,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 4.w),
          Text(
            type,
            style: context.textTheme.bodySmall?.copyWith(
              color: badgeConfig.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 11.sp,
            ),
          ),
        ],
      ),
    );
  }

  _BadgeConfig _getBadgeConfig(BuildContext context) {
    switch (type.toLowerCase()) {
      case 'good':
        return _BadgeConfig(
          backgroundColor: Colors.green.withOpacity(0.1),
          textColor: Colors.green.shade700,
          imagePath: 'assets/muhurat/good.png',
        );
      case 'auspicious':
        return _BadgeConfig(
          backgroundColor: context.colorScheme.primary.withOpacity(0.1),
          textColor: context.colorScheme.primary,
          imagePath: 'assets/muhurat/auspicious.png',
        );
      case 'inauspicious':
        return _BadgeConfig(
          backgroundColor: Colors.orange.withOpacity(0.1),
          textColor: Colors.orange.shade700,
          imagePath: 'assets/muhurat/inauspicious.png',
        );
      default:
        return _BadgeConfig(
          backgroundColor: context.colorScheme.surfaceContainerHighest,
          textColor: context.colorScheme.onSurfaceVariant,
          imagePath: 'assets/muhurat/good.png',
        );
    }
  }
}

class _BadgeConfig {
  final Color backgroundColor;
  final Color textColor;
  final String imagePath;

  _BadgeConfig({
    required this.backgroundColor,
    required this.textColor,
    required this.imagePath,
  });
}

