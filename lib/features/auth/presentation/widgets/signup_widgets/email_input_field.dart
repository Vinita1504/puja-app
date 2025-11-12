import 'package:flutter/material.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../../../../../core/utils/input_validator.dart';
import '../../../../../core/shared/labeled_text_field.dart';

/// Email input field widget
///
/// A text field for email input with validation.
/// Displays a bold "Email" label above the input field.
class EmailInputField extends StatelessWidget {
  final TextEditingController controller;

  const EmailInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: 'Email',
      controller: controller,
      decoration: context.inputDecoration(hintText: 'Enter your email'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        final trimmedValue = value.trim();
        if (!InputValidator.isValidEmail(trimmedValue)) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }
}
