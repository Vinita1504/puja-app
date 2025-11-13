import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'testimonial_item_widget.dart';

/// Testimonials section widget
///
/// Displays a horizontal scrollable list of testimonial cards
/// with play button overlays that open YouTube videos.
class TestimonialsSectionWidget extends StatelessWidget {
  const TestimonialsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Testimonials',
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 120.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: const [
              TestimonialItemWidget(
                imagePath: 'assets/images/testimonial_1.png',
                youtubeVideoId: 'dQw4w9WgXcQ', // Replace with actual video IDs
              ),
              TestimonialItemWidget(
                imagePath: 'assets/images/testimonial_2.png',
                youtubeVideoId: 'dQw4w9WgXcQ', // Replace with actual video IDs
              ),
              TestimonialItemWidget(
                imagePath: 'assets/images/testimonial_3.png',
                youtubeVideoId: 'dQw4w9WgXcQ', // Replace with actual video IDs
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
