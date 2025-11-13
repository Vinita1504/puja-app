import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'service_card_widget.dart';

/// Spiritual Learning & Guidance section widget
///
/// Displays a description and horizontal scrollable list of spiritual learning service cards.
class SpiritualLearningSectionWidget extends StatelessWidget {
  const SpiritualLearningSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listViewHeight =
        160.h; // Change this value to adjust card height (e.g., 150.h)

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spiritual Learning & Guidance',
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: listViewHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  height: listViewHeight,
                  child: const ServiceCardWidget(
                    imagePath: 'assets/images/bhagwat-gita.png',
                    title: 'Bhagavad Gita Session',
                  ),
                ),
                SizedBox(
                  height: listViewHeight,
                  child: const ServiceCardWidget(
                    imagePath: 'assets/images/guru-consultation.png',
                    title: 'Guru Consultation',
                  ),
                ),
                SizedBox(
                  height: listViewHeight,
                  child: const ServiceCardWidget(
                    imagePath: 'assets/images/meditation.png',
                    title: 'Guided Meditation',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
