import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/puja.dart';

/// Puja description widget
///
/// Displays the puja title with orange underline and description text.
class PujaDescriptionWidget extends StatelessWidget {
  final PujaEntity puja;

  const PujaDescriptionWidget({
    super.key,
    required this.puja,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with orange underline
          Text(
            puja.title ?? puja.name,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            height: 2.h,
            width: 100.w,
            color: context.colorScheme.primary,
          ),
          SizedBox(height: 16.h),
          // Description
          if (puja.description != null && puja.description!.isNotEmpty)
            Text(
              puja.description!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
        ],
      ),
    );
  }
}

