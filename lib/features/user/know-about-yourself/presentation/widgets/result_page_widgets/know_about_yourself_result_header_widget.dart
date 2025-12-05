import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Know about yourself result header widget
///
/// Displays the app bar with back button and centered "Know About Yourself" title.
class KnowAboutYourselfResultHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  /// Callback when back button is pressed
  final VoidCallback? onBackPressed;

  const KnowAboutYourselfResultHeaderWidget({
    super.key,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colorScheme.surface,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: context.colorScheme.onSurface,
        ),
        onPressed: onBackPressed ?? () => context.pop(),
      ),
      title: Text(
        'Know About Yourself',
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

