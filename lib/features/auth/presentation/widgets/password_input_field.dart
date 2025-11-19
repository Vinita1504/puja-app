import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/input_decoration_extension.dart';
import '../../../../core/utils/input_validator.dart';
import '../../../../core/shared/labeled_text_field.dart';
import '../bloc/password_visibility/password_visibility_bloc.dart';
import '../bloc/password_visibility/password_visibility_event.dart';
import '../bloc/password_visibility/password_visibility_state.dart';

/// Password input field widget with visibility toggle
///
/// A text field for password input with an eye icon to toggle
/// password visibility.
class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityBloc(),
      child: BlocBuilder<PasswordVisibilityBloc, PasswordVisibilityState>(
        builder: (context, state) {
          return LabeledTextField(
            label: 'Password',
            controller: controller,
            decoration: context.inputDecoration(
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(
                  state.isObscured
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                onPressed: () {
                  context.read<PasswordVisibilityBloc>().add(
                    const PasswordVisibilityEvent.passwordVisibilityToggled(),
                  );
                },
              ),
            ),
            obscureText: state.isObscured,
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
        },
      ),
    );
  }
}
