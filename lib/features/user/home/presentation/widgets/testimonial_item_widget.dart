import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'youtube_player_modal_widget.dart';

/// Testimonial item widget
///
/// Displays a rectangular card with a thumbnail image and a play button overlay.
/// Tapping the card opens a YouTube video player modal.
class TestimonialItemWidget extends StatelessWidget {
  /// Image path for the testimonial thumbnail
  final String imagePath;

  /// YouTube video ID for the testimonial video
  final String youtubeVideoId;

  const TestimonialItemWidget({
    super.key,
    required this.imagePath,
    required this.youtubeVideoId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        YoutubePlayerModalWidget.show(context, youtubeVideoId);
      },
      child: Container(
        width: 160.w,
        height: 120.h,
        margin: EdgeInsets.only(right: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // YouTube thumbnail image with fallback to asset image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.network(
                'https://img.youtube.com/vi/$youtubeVideoId/0.jpg',
                width: 160.w,
                height: 120.h,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Container(
                    width: 160.w,
                    height: 120.h,
                    color: context.colorScheme.surfaceContainerLowest,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                        color: context.colorScheme.primary,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  // Fallback to asset image if YouTube thumbnail fails
                  return Image.asset(
                    imagePath,
                    width: 160.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 160.w,
                        height: 120.h,
                        color: context.colorScheme.surfaceContainerLowest,
                        child: Icon(
                          Icons.person,
                          size: 48.sp,
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            // Play button overlay
            Center(
              child: Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: context.colorScheme.onPrimary,
                  size: 28.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
