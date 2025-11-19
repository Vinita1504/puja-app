import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Date of birth input widget
///
/// Displays a text field with date picker for selecting date of birth.
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
        ? DateFormat('dd/MM/yyyy').format(dateOfBirth!)
        : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date Of Birth',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          readOnly: true,
          onTap: () => _selectDate(context),
          controller: TextEditingController(text: dateText),
          decoration: context.profileInputDecoration(
            hintText: '12/11/2000',
            suffixIcon: Icon(
              Icons.calendar_today,
              color: context.colorScheme.outlineVariant,
              size: 20.sp,
            ),
          ),
        ),
      ],
    );
  }
}
