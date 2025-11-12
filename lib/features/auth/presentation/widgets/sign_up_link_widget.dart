import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/routing/app_routes.dart';

/// Sign up link widget
///
/// Displays "Didn't have any account sign up" text with "sign up"
/// highlighted in orange. Navigates to sign up page when tapped.
class SignUpLinkWidget extends StatelessWidget {
  const SignUpLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRoutes.signUp);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.outline,
          ),
          children: [
            TextSpan(text: 'Didn\'t have any account? '),
            TextSpan(
              text: 'Sign up',
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
