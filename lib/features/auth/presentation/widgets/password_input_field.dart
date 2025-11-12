import 'package:flutter/material.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/input_decoration_extension.dart';
import '../../../../core/utils/input_validator.dart';
import '../../../../core/shared/labeled_text_field.dart';

/// Password input field widget with visibility toggle
///
/// A text field for password input with an eye icon to toggle
/// password visibility.
class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInputField({super.key, required this.controller});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: 'Password',
      controller: widget.controller,
      decoration: context.inputDecoration(
        hintText: 'Enter your password',
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: context.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (!InputValidator.isValidPassword(value)) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
