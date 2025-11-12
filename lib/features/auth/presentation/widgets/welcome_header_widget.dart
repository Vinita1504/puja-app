import 'package:flutter/material.dart';
import '../../../../core/extensions/context_extension.dart';

/// Welcome header widget for the login page
///
/// Displays the "Welcome" heading and "Please enter your details" subtitle.
class WelcomeHeaderWidget extends StatelessWidget {
  const WelcomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome',
          style: context.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        // SizedBox(height: 8.h),
        Text(
          'Please enter your details',
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.outline,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
