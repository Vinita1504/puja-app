import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Panchang header widget
///
/// Displays the AppBar with orange background, back button, "Explore" title,
/// and notification icon matching the reference design.
class PanchangHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PanchangHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: context.colorScheme.onPrimary),
      foregroundColor: context.colorScheme.onPrimary,
      backgroundColor: context.colorScheme.primary,
      title: Text(
        'Daily Panchang',
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
          color: context.colorScheme.onPrimary,
        ),
      ),
      elevation: 0,
      
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

