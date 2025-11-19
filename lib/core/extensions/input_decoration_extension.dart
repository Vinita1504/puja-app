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

  InputDecoration searchInputDecoration({String? hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.outlineVariant,
        fontSize: 14.sp,
        fontFamily: 'Poppins',
      ),
      filled: true,
      fillColor: colorScheme.surfaceContainerLowest,
      suffixIcon: Icon(
        Icons.search,
        color: colorScheme.outlineVariant.withValues(alpha: 0.7),
        size: 20.sp,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 1.w,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 1.w,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 1.w,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
    );
  }

  /// Creates a standardized InputDecoration for profile form fields
  ///
  /// [labelText] - The label text displayed above the input field
  /// [hintText] - Optional hint text displayed inside the input field
  /// [suffixIcon] - Optional widget displayed at the end of the input field
  /// [isRequired] - Whether the field is required (adds asterisk to label)
  /// [errorText] - Optional error text to display
  ///
  /// Returns an [InputDecoration] configured with theme colors and styling
  /// specifically for profile forms
  InputDecoration profileInputDecoration({
    String? labelText,
    String? hintText,
    Widget? suffixIcon,
    bool isRequired = false,
    String? errorText,
  }) {
    final colorScheme = this.colorScheme;
    final label = isRequired && labelText != null ? '$labelText *' : labelText;

    return InputDecoration(
      labelText: label,
      hintText: hintText,
      suffixIcon: suffixIcon,
      errorText: errorText,
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
      errorStyle: textTheme.bodySmall?.copyWith(
        color: Colors.red,
        fontSize: 12.sp,
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
