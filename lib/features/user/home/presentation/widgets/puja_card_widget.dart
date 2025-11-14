import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Puja card widget for displaying puja information
///
/// Displays an image, title, and description for a puja service.
/// Supports both horizontal (homepage) and full-width (puja page) layouts.
class PujaCardWidget extends StatelessWidget {
  /// Image path for the puja
  final String imagePath;

  /// Title of the puja
  final String title;

  /// Description of the puja
  final String description;

  /// Whether to display as full-width card (for vertical lists)
  final bool isFullWidth;

  /// Whether to show the "Book Now" button
  final bool showBookNowButton;

  /// Callback when "Book Now" button is tapped
  final VoidCallback? onBookNowTap;

  const PujaCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.isFullWidth = false,
    this.showBookNowButton = false,
    this.onBookNowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFullWidth ? double.infinity : 0.5.sw,
      height: isFullWidth ? null : 200.h,
      margin: isFullWidth
          ? EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h)
          : EdgeInsets.only(right: 12.w, bottom: 10.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final imageHeight = isFullWidth
              ? constraints.maxWidth * 0.4
              : constraints.maxHeight * 0.45;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: imageHeight,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: imageHeight,
                      color: context.colorScheme.surfaceContainerLowest,
                      child: Icon(
                        Icons.image_not_supported,
                        size: 48.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    );
                  },
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      description,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.outline,
                      ),
                      maxLines: isFullWidth ? 2 : 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (showBookNowButton) ...[
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          // width: double.infinity,
                          child: FilledButton(
                            onPressed: onBookNowTap,
                            style: FilledButton.styleFrom(
                              backgroundColor: context.colorScheme.primary,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            ),
                            child: Text(
                              'Book Now',
                              style: context.textTheme.titleSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
