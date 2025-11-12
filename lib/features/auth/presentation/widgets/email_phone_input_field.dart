import 'package:flutter/material.dart';
import '../../../../core/extensions/input_decoration_extension.dart';
import '../../../../core/utils/input_validator.dart';
import '../../../../core/shared/labeled_text_field.dart';

/// Email or phone number input field widget
///
/// A text field that accepts either email or phone number input
/// with validation for both formats.
class EmailPhoneInputField extends StatelessWidget {
  final TextEditingController controller;

  const EmailPhoneInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: 'Email or Phone Number',
      controller: controller,
      decoration: context.inputDecoration(
        hintText: 'Enter your Email or Phone Number',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email or phone number';
        }
        final trimmedValue = value.trim();
        final isEmail = InputValidator.isValidEmail(trimmedValue);
        final isPhone = InputValidator.isValidPhoneNumber(trimmedValue);

        if (!isEmail && !isPhone) {
          return 'Please enter a valid email or phone number';
        }
        return null;
      },
    );
  }
}
