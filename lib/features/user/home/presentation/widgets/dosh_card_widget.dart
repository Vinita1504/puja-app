import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Dosh card widget for displaying dosh puja information
///
/// Displays a square card with an image and title for a dosh puja service.
class DoshCardWidget extends StatelessWidget {
  /// Image path for the dosh
  final String imagePath;

  /// Title of the dosh
  final String title;

  const DoshCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.35.sw,
      height: 110.h,
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imagePath,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.8,
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
              // // Title at the bottom
              // Positioned(
              //   bottom: 0,
              //   left: 0,
              //   right: 0,
              //   child: Container(
              //     padding: EdgeInsets.all(8.w),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.vertical(
              //         bottom: Radius.circular(12.r),
              //       ),
              //       gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: [
              //           Colors.transparent,
              //           Colors.black.withValues(alpha: 0.7),
              //         ],
              //       ),
              //     ),
              //     child: Text(
              //       title,
              //       style: context.textTheme.bodyMedium?.copyWith(
              //         fontWeight: FontWeight.w600,
              //         color: Colors.white,
              //       ),
              //       textAlign: TextAlign.center,
              //       maxLines: 2,
              //       overflow: TextOverflow.ellipsis,
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
