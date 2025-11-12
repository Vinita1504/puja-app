import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Application color scheme configuration
///
/// Maps brand colors to Material 3 ColorScheme roles for consistent
/// theming across the application. Supports both light and dark themes.
class AppColorScheme {
  AppColorScheme._(); // Private constructor to prevent instantiation

  /// Light theme color scheme
  ///
  /// Uses brand colors mapped to Material 3 color roles:
  /// - Primary: CTA color (#FFA449) for primary actions
  /// - Secondary: Lighter orange variant for secondary actions
  /// - Surface: Card background (#FEF5F2) for elevated surfaces
  /// - Error: Standard Material error color
  static ColorScheme get light => ColorScheme.light(
    primary: AppColors.ctaPrimaryLight,
    secondary: AppColors.splashBackgroundLight,
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black87,
    onError: Colors.white,
    surfaceContainerHighest: AppColors.cardBackgroundLight,
    surfaceContainer: AppColors.cardBackgroundLight,
    outlineVariant: Colors.grey.shade500,
    outline: Colors.grey.shade600,
  );

  /// Dark theme color scheme
  ///
  /// Uses darker variants of brand colors for dark theme.
  /// Colors are placeholders and can be refined when dark theme is fully implemented.
  static ColorScheme get dark => ColorScheme.dark(
    primary: AppColors.ctaPrimaryDark,
    secondary: AppColors.splashBackgroundDark,
    surface: AppColors.cardBackgroundDark,
    error: Colors.redAccent,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onError: Colors.white,
    surfaceContainerHighest: AppColors.cardBackgroundDark,
    surfaceContainer: AppColors.cardBackgroundDark,
  );
}
