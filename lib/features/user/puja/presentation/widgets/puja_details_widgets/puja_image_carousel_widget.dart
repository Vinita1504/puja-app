import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Puja image carousel widget
///
/// Displays a carousel of images with pagination dots.
class PujaImageCarouselWidget extends StatelessWidget {
  final List<String> imageUrls;
  final int currentIndex;
  final Function(int)? onPageChanged;

  const PujaImageCarouselWidget({
    super.key,
    required this.imageUrls,
    this.currentIndex = 0,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrls.isEmpty) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: context.colorScheme.surfaceContainerLowest,
          child: Icon(
            Icons.image_not_supported,
            size: 48.sp,
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: CarouselSlider.builder(
            itemCount: imageUrls.length,
            options: CarouselOptions(
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              enlargeFactor: 0.6,
              viewportFraction: 0.7,
              enableInfiniteScroll: true,
              initialPage: currentIndex,
              onPageChanged: (index, reason) {
                onPageChanged?.call(index);
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLowest,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        // Pagination dots
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageUrls.length,
            (index) => Container(
              width: 8.w,
              height: 8.h,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index
                    ? context.colorScheme.primary
                    : context.colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

