import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import 'know_about_yourself_theme.dart';

/// Date of birth input widget
///
/// Displays a text field with date picker for selecting date of birth.
/// Includes calendar icon on the left side with light orange background
/// and red outline, and as suffix icon.
class DateOfBirthInputWidget extends StatelessWidget {
  /// Selected date of birth
  final DateTime? dateOfBirth;

  /// Callback when date is selected
  final ValueChanged<DateTime> onDateSelected;

  const DateOfBirthInputWidget({
    super.key,
    this.dateOfBirth,
    required this.onDateSelected,
  });

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate:
          dateOfBirth ??
          DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(colorScheme: context.colorScheme),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateText = dateOfBirth != null
        ? DateFormat('dd-MM-yyyy').format(dateOfBirth!)
        : '';

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
                Icons.calendar_today,
                color: context.colorScheme.primary,
                size: KnowAboutYourselfTheme.iconSize,
              ),
            ),
            SizedBox(width: KnowAboutYourselfTheme.iconLabelSpacing),
            Text(
              'Date Of Birth',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: KnowAboutYourselfTheme.labelFieldSpacing),
        TextFormField(
          readOnly: true,
          onTap: () => _selectDate(context),
          controller: TextEditingController(text: dateText),
          decoration: context.profileInputDecoration(
            hintText: 'DD-MM-YYYY',
            suffixIcon: Icon(
              Icons.calendar_today,
              color: context.colorScheme.primary,
              size: KnowAboutYourselfTheme.iconSize,
            ),
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
        ),
      ],
    );
  }
}

