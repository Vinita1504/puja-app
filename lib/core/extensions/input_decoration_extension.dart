import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'context_extension.dart';

/// Extension for creating reusable input decorations
///
/// Provides a consistent way to create InputDecoration for text fields
/// using theme colors and responsive sizing.
extension InputDecorationExtension on BuildContext {
  /// Creates a standardized InputDecoration for text fields
  ///
  /// [label] - The label text displayed above the input field
  /// [hintText] - Optional hint text displayed inside the input field
  /// [suffixIcon] - Optional widget displayed at the end of the input field
  ///
  /// Returns an [InputDecoration] configured with theme colors and styling
  InputDecoration inputDecoration({
    String? labelText,
    String? hintText,
    IconButton? suffixIcon,
  }) {
    final colorScheme = this.colorScheme;

    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      suffixIcon: suffixIcon,
      isDense: true,
      filled: true,
      fillColor: Colors.white,
      labelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.outline,
        fontWeight: FontWeight.w600,
      ),
      hintStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.outlineVariant,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: colorScheme.primary, width: 2.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.red, width: 2.w),
      ),
    );
  }
}
