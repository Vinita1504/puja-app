import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Kundali result header widget
///
/// Displays the app bar for the kundali result page with title and back button.
class KundaliResultHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const KundaliResultHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Kundali Result',
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

