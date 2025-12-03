import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';

/// Dosha time input widget
///
/// Displays a text field with time picker for selecting time of birth.
/// Includes clock icon on the left side and as suffix icon.
class DoshaTimeInputWidget extends StatelessWidget {
  /// Selected time of birth
  final TimeOfDay? timeOfBirth;

  /// Callback when time is selected
  final ValueChanged<TimeOfDay> onTimeSelected;

  const DoshaTimeInputWidget({
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
            Icon(
              Icons.access_time,
              color: context.colorScheme.primary,
              size: 20.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              'Time Of Birth',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        TextFormField(
          readOnly: true,
          onTap: () => _selectTime(context),
          controller: TextEditingController(text: timeText),
          decoration: context.profileInputDecoration(
            hintText: '__:__',
            suffixIcon: Icon(
              Icons.access_time,
              color: context.colorScheme.primary,
              size: 20.sp,
            ),
          ),
        ),
      ],
    );
  }
}

