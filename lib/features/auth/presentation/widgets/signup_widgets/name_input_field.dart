import 'package:flutter/material.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../../../../../core/utils/input_validator.dart';
import '../../../../../core/shared/labeled_text_field.dart';

/// Name input field widget
///
/// A text field for name input with validation.
/// Displays a bold "Name" label above the input field.
class NameInputField extends StatelessWidget {
  final TextEditingController controller;

  const NameInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: 'Name',
      controller: controller,
      decoration: context.inputDecoration(hintText: 'Enter your name'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        }
        if (!InputValidator.isNotEmpty(value)) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }
}
