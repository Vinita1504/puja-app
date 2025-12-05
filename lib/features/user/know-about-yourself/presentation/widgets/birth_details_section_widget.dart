import 'package:flutter/material.dart';
import '../../../../../core/extensions/context_extension.dart';
import 'date_of_birth_input_widget.dart';
import 'time_of_birth_input_widget.dart';
import 'place_of_birth_input_widget.dart';
import 'know_about_yourself_theme.dart';

/// Birth details section widget
///
/// Displays a section containing all birth detail input fields:
/// Date of Birth, Time of Birth, and Place of Birth.
class BirthDetailsSectionWidget extends StatelessWidget {
  /// Selected date of birth
  final DateTime? dateOfBirth;
  /// Callback when date is selected
  final ValueChanged<DateTime> onDateSelected;

  /// Selected time of birth
  final TimeOfDay? timeOfBirth;

  /// Callback when time is selected
  final ValueChanged<TimeOfDay> onTimeSelected;

  /// Controller for place of birth
  final TextEditingController placeOfBirthController;

  const BirthDetailsSectionWidget({
    super.key,
    this.dateOfBirth,
    required this.onDateSelected,
    this.timeOfBirth,
    required this.onTimeSelected,
    required this.placeOfBirthController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Birth Details',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: KnowAboutYourselfTheme.fieldSpacing),
        DateOfBirthInputWidget(
          dateOfBirth: dateOfBirth,
          onDateSelected: onDateSelected,
        ),
        SizedBox(height: KnowAboutYourselfTheme.fieldSpacing),
        TimeOfBirthInputWidget(
          timeOfBirth: timeOfBirth,
          onTimeSelected: onTimeSelected,
        ),
        SizedBox(height: KnowAboutYourselfTheme.fieldSpacing),
        PlaceOfBirthInputWidget(
          controller: placeOfBirthController,
        ),
      ],
    );
  }
}

