import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Home V2 service card widget
///
/// Displays a square card with a circular image at the top and service name below.
/// Used in the service grid section of the home page v2.
class HomeV2ServiceCardWidget extends StatelessWidget {
  /// Image path for the service
  final String imagePath;

  /// Title of the service
  final String title;

  const HomeV2ServiceCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth.isFinite
            ? constraints.maxWidth
            : 140.w;
        final height = constraints.maxHeight.isFinite
            ? constraints.maxHeight
            : 180.h;

        final padding = 12.w;
        final availableHeight = height - (padding * 2);
        final availableWidth = width - (padding * 2);

        // Reserve space for text (2 lines max) and spacing
        final minTextHeight = 40.h;
        final minSpacing = 8.h;
        final reservedSpace = minTextHeight + minSpacing;

        // Calculate image size considering both constraints
        // By width: 50% of available width
        // By height: available height minus reserved space
        final imageSizeByWidth = availableWidth * 0.5;
        final imageSizeByHeight = availableHeight - reservedSpace;

        // Use the smaller value to ensure everything fits, with min/max bounds
        final imageSize =
            (imageSizeByWidth < imageSizeByHeight
                    ? imageSizeByWidth
                    : imageSizeByHeight)
                .clamp(50.w, 100.w);

        // Calculate spacing from remaining height
        final remainingHeight = availableHeight - imageSize - minTextHeight;
        final spacing = remainingHeight.clamp(8.h, 16.h);

        return Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFF0),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.surfaceContainerLowest,
                ),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.image_not_supported,
                        size: imageSize * 0.4,
                        color: context.colorScheme.onSurfaceVariant,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: spacing),
              Flexible(
                child: Text(
                  title,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
