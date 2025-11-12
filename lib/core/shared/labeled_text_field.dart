import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../extensions/context_extension.dart';

/// Reusable labeled text field widget
///
/// Wraps a TextFormField with a bold label displayed above the input field.
/// Provides consistent styling and spacing for form fields.
/// Can be used across login, signup, and other authentication pages.
class LabeledTextField extends StatelessWidget {
  /// The label text displayed above the input field
  final String label;

  /// Controller for the text field
  final TextEditingController controller;

  /// Decoration for the input field
  final InputDecoration decoration;

  /// Validator function for form validation
  final String? Function(String?)? validator;

  /// Keyboard type for the input field
  final TextInputType? keyboardType;

  /// Whether to obscure text (for passwords)
  final bool obscureText;

  /// Suffix icon widget (e.g., password visibility toggle)
  final Widget? suffixIcon;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.decoration,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: decoration.copyWith(suffixIcon: suffixIcon),
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
