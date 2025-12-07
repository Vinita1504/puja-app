import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Kundali finder header widget
///
/// Displays the app bar with back button, centered "Kundali Finder" title.
class KundaliFinderHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const KundaliFinderHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colorScheme.surface,
      elevation: 0,
      title: Text(
        'Kundali Finder',
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colorScheme.onSurface,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

