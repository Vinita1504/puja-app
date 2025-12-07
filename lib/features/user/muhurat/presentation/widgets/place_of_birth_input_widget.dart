import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../../../know-about-yourself/presentation/widgets/know_about_yourself_theme.dart';

/// Place of birth input widget
///
/// Displays a text field for entering the place of birth.
/// Includes location icon on the left side with light orange background
/// and red outline.
class PlaceOfBirthInputWidget extends StatelessWidget {
  /// Controller for the place of birth field
  final TextEditingController controller;

  const PlaceOfBirthInputWidget({
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
            Container(
              width: KnowAboutYourselfTheme.iconSquareSize,
              height: KnowAboutYourselfTheme.iconSquareSize,
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerHighest,
                border: Border.all(
                  color: context.colorScheme.primary.withValues(alpha: 0.2),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Icon(
                Icons.location_on,
                color: context.colorScheme.primary,
                size: KnowAboutYourselfTheme.iconSize,
              ),
            ),
            SizedBox(width: KnowAboutYourselfTheme.iconLabelSpacing),
            Text(
              'Place Of Birth',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: KnowAboutYourselfTheme.labelFieldSpacing),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            hintText: 'e.g., Patna, India',
          ).copyWith(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                KnowAboutYourselfTheme.inputBorderRadius,
              ),
              borderSide: BorderSide(
                color: context.colorScheme.secondary,
                width: 1.w,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                KnowAboutYourselfTheme.inputBorderRadius,
              ),
              borderSide: BorderSide(
                color: context.colorScheme.secondary,
                width: 1.w,
              ),
            ),
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}

