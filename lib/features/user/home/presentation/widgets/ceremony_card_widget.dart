import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Ceremony card widget for displaying life ceremony information
///
/// Displays a square card with an image and title for a life ceremony service.
class CeremonyCardWidget extends StatelessWidget {
  /// Image path for the ceremony
  final String imagePath;

  /// Title of the ceremony
  final String title;

  const CeremonyCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate card dimensions based on available constraints
        // Use height constraint if available, otherwise use width or fallback
        final availableHeight = constraints.maxHeight;
        final availableWidth = constraints.maxWidth;

        // Calculate card size - prefer square, use available constraints
        final cardHeight = availableHeight.isFinite && availableHeight > 0
            ? availableHeight
            : (availableWidth.isFinite && availableWidth > 0
                  ? availableWidth
                  : 140.w); // Fallback to default

        final cardWidth = availableWidth.isFinite && availableWidth > 0
            ? availableWidth
            : cardHeight; // Use height as width if width is unbounded

        return Container(
          width: cardWidth,
          height: cardHeight,
          margin: EdgeInsets.only(right: 12.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              // Image
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          color: Colors.grey.shade300,
                          child: Icon(
                            Icons.image_not_supported,
                            size: 32.sp,
                            color: Colors.grey.shade600,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // Title
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
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
