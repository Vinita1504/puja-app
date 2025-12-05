import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Theme constants for Know About Yourself feature
///
/// Defines widget-specific sizing and spacing constants.
/// Colors should be accessed via context.colorScheme from context_extension.
class KnowAboutYourselfTheme {
  KnowAboutYourselfTheme._();

  // Icon sizes
  static double get iconSize => 18.sp;
  static double get iconSquareSize => 30.sp;

  // Spacing
  static double get iconLabelSpacing => 8.w;
  static double get labelFieldSpacing => 8.h;
  static double get fieldSpacing => 16.h;

  // Border radius
  static double get inputBorderRadius => 12.r;
  static double get buttonBorderRadius => 12.r;
}

