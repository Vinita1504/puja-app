import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Service card widget for displaying spiritual learning services
///
/// Displays a square card with an image and title beneath the card.
class ServiceCardWidget extends StatelessWidget {
  /// Image path for the service
  final String imagePath;

  /// Title of the service
  final String title;

  const ServiceCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate card dimensions based on available height
        // Reserve space for title (approximately 40-50.h) and spacing (8.h)
        final availableHeight = constraints.maxHeight;
        final cardHeight = availableHeight.isFinite && availableHeight > 0
            ? availableHeight -
                  50
                      .h // Reserve space for title and spacing
            : 140.w; // Fallback to default when height is unbounded
        final cardWidth = 140.w;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image card
            Container(
              width: cardWidth,
              height: cardHeight,
              margin: EdgeInsets.only(right: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: context.colorScheme.surfaceContainerLowest,
                      child: Icon(
                        Icons.image_not_supported,
                        size: 32.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 8.h),
            // Title beneath the card
            SizedBox(
              width: cardWidth,
              child: Text(
                title,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        );
      },
    );
  }
}
