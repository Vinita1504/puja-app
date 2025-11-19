import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../bloc/chadhava_details/chadhava_details_bloc.dart';
import '../../bloc/chadhava_details/chadhava_details_event.dart';
import '../../bloc/chadhava_details/chadhava_details_state.dart';

/// Chadhava image carousel widget
///
/// Displays a carousel of images with pagination dots and share button.
class ChadhavaImageCarouselWidget extends StatelessWidget {
  final List<String> imageUrls;

  const ChadhavaImageCarouselWidget({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    if (imageUrls.isEmpty) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          // height: 250.h,
          color: context.colorScheme.surfaceContainerLowest,
          child: Icon(
            Icons.image_not_supported,
            size: 48.sp,
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return BlocBuilder<ChadhavaDetailsBloc, ChadhavaDetailsState>(
      builder: (context, state) {
        final currentIndex = state.maybeWhen(
          loaded: (_, __, ___, ____, currentImageIndex, ______, _______) =>
              currentImageIndex,
          orElse: () => 0,
        );

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
                  onPageChanged: (index, reason) {
                    context.read<ChadhavaDetailsBloc>().add(
                      ChadhavaDetailsEvent.carouselImageChanged(index: index),
                    );
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
                      child: Image.asset(imageUrls[index], fit: BoxFit.cover),
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
                        ? Colors.orange
                        : Colors.orange.withValues(alpha: 0.3),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
