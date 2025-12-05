import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import 'know_about_yourself_theme.dart';

/// Know about yourself button widget
///
/// Displays a large prominent button for submitting the form.
class KnowAboutYourselfButtonWidget extends StatelessWidget {
  /// Callback when button is pressed
  final VoidCallback onPressed;

  /// Whether the button is enabled
  final bool isEnabled;

  const KnowAboutYourselfButtonWidget({
    super.key,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:  onPressed ,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colorScheme.primary,
          foregroundColor: context.colorScheme.onPrimary,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              KnowAboutYourselfTheme.buttonBorderRadius,
            ),
          ),
          elevation: 0,
        ),
        child: Text(
          'Know About Yourself',
          style: context.textTheme.titleMedium?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

