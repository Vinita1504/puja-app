import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Filter bottom sheet header widget
///
/// Displays the header with title and close button.
class FilterBottomSheetHeaderWidget extends StatelessWidget {
  /// Callback when close button is tapped
  final VoidCallback? onCloseTap;

  const FilterBottomSheetHeaderWidget({
    super.key,
    this.onCloseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          Text(
            'Pooja Category',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.orange,
              size: 24.sp,
            ),
            onPressed: onCloseTap,
          ),
        ],
      ),
    );
  }
}

