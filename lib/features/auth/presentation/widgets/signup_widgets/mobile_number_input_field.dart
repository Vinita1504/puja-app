import 'package:flutter/material.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../../../../../core/utils/input_validator.dart';
import '../../../../../core/shared/labeled_text_field.dart';

/// Mobile number input field widget
///
/// A text field for mobile number input with validation.
/// Displays a bold "Mobile Number" label above the input field.
class MobileNumberInputField extends StatelessWidget {
  final TextEditingController controller;

  const MobileNumberInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: 'Mobile Number',
      controller: controller,
      decoration: context.inputDecoration(hintText: 'Enter your mobile number'),
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your mobile number';
        }
        final trimmedValue = value.trim();
        if (!InputValidator.isValidPhoneNumber(trimmedValue)) {
          return 'Please enter a valid 10-digit mobile number';
        }
        return null;
      },
    );
  }
}
