import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../../../know-about-yourself/presentation/widgets/know_about_yourself_theme.dart';

/// Time of birth input widget
///
/// Displays a text field with time picker for selecting time of birth.
/// Includes clock icon on the left side with light orange background
/// and red outline, and as suffix icon.
class TimeOfBirthInputWidget extends StatelessWidget {
  /// Selected time of birth
  final TimeOfDay? timeOfBirth;

  /// Callback when time is selected
  final ValueChanged<TimeOfDay> onTimeSelected;

  const TimeOfBirthInputWidget({
    super.key,
    this.timeOfBirth,
    required this.onTimeSelected,
  });

  Future<void> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: timeOfBirth ?? TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(colorScheme: context.colorScheme),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onTimeSelected(picked);
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    final timeText = timeOfBirth != null ? _formatTime(timeOfBirth!) : '';

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
                Icons.access_time,
                color: context.colorScheme.primary,
                size: KnowAboutYourselfTheme.iconSize,
              ),
            ),
            SizedBox(width: KnowAboutYourselfTheme.iconLabelSpacing),
            Text(
              'Time Of Birth',
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
          onTap: () => _selectTime(context),
          controller: TextEditingController(text: timeText),
          decoration: context.profileInputDecoration(
            hintText: '-- : --',
            suffixIcon: Icon(
              Icons.access_time,
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

