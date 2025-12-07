import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Muhurat result header widget
///
/// AppBar for the muhurat result page with back button and title.
class MuhuratResultHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const MuhuratResultHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        'Muhurat Result',
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: context.colorScheme.surface,
      surfaceTintColor: context.colorScheme.surface,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

