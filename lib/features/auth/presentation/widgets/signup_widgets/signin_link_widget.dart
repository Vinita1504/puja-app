import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';

/// Sign in link widget
///
/// Displays "Didn't have any account sign up" text with "sign up"
/// highlighted in orange. Navigates to login page when tapped.
class SignInLinkWidget extends StatelessWidget {
  const SignInLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRoutes.login);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.outline,
          ),
          children: [
            TextSpan(text: 'Already have an account? '),
            TextSpan(
              text: 'Sign in',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
