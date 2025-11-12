import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Extension methods for easier context access
/// Provides access to screen width, height, default padding, default margin, theme, color scheme, and text theme.
/// Uses flutter_screenutil for responsive units.
/// Usage:
/// context.screenWidth
/// context.screenHeight
extension ContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  EdgeInsets get defaultPadding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  EdgeInsets get defaultMargin =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);

  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}
