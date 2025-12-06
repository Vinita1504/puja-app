import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/panchang_entity.dart';

/// Panchang date card widget
///
/// Displays today's date with a vertical orange bar on the left.
/// Clean and minimalist design matching the reference.
class PanchangDateCardWidget extends StatelessWidget {
  final PanchangEntity panchang;

  const PanchangDateCardWidget({
    super.key,
    required this.panchang,
  });

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final formattedDate = DateFormat('d MMMM, yyyy').format(today);

    return Row(
      children: [
        Container(
          width: 4.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          formattedDate,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

