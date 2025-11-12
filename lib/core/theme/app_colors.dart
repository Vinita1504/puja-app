import 'package:flutter/material.dart';

/// Semantic color constants for the application
///
/// This class provides semantic color definitions that support both
/// light and dark themes. Dark theme colors are placeholders for now
/// and can be updated when dark theme is fully implemented.
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Light Theme Colors
  static const Color splashBackgroundLight = Color(0xFFF7BD83);
  static const Color ctaPrimaryLight = Color(0xFFFFA449);
  static const Color cardBackgroundLight = Color(0xFFFEF5F2);
  static const Color appBarBackgroundLight = Color(0xFFFFD8A1);

  // Dark Theme Colors (placeholders - to be updated when dark theme is implemented)
  static const Color splashBackgroundDark = Color(0xFF8B6B4A);
  static const Color ctaPrimaryDark = Color(0xFFFF8C42);
  static const Color cardBackgroundDark = Color(0xFF2A1F1C);
  static const Color appBarBackgroundDark = Color(0xFF3D2E1F);

  /// Get splash background color based on brightness
  static Color splashBackground(Brightness brightness) {
    return brightness == Brightness.dark
        ? splashBackgroundDark
        : splashBackgroundLight;
  }

  /// Get CTA primary color based on brightness
  static Color ctaPrimary(Brightness brightness) {
    return brightness == Brightness.dark ? ctaPrimaryDark : ctaPrimaryLight;
  }

  /// Get card background color based on brightness
  static Color cardBackground(Brightness brightness) {
    return brightness == Brightness.dark
        ? cardBackgroundDark
        : cardBackgroundLight;
  }

  /// Get app bar background color based on brightness
  static Color appBarBackground(Brightness brightness) {
    return brightness == Brightness.dark
        ? appBarBackgroundDark
        : appBarBackgroundLight;
  }
}
