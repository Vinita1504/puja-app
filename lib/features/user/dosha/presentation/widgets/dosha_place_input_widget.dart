import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';

/// Dosha place input widget
///
/// Displays a text field for entering the place of birth.
/// Includes location icon on the left side and as suffix icon.
class DoshaPlaceInputWidget extends StatelessWidget {
  /// Controller for the place of birth field
  final TextEditingController controller;

  const DoshaPlaceInputWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: context.colorScheme.primary,
              size: 20.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              'Place Of Birth',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            hintText: 'e.g., Patna, India',
            suffixIcon: Icon(
              Icons.location_on,
              color: context.colorScheme.primary,
              size: 20.sp,
            ),
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}

