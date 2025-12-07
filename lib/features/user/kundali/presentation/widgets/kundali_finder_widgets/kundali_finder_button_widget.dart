import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../know-about-yourself/presentation/widgets/know_about_yourself_theme.dart';

/// Kundali finder button widget
///
/// Displays a large prominent button for submitting the form.
class KundaliFinderButtonWidget extends StatelessWidget {
  /// Callback when button is pressed
  final VoidCallback onPressed;

  /// Whether the button is enabled
  final bool isEnabled;

  const KundaliFinderButtonWidget({
    super.key,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
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
          'Find Kundali',
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

