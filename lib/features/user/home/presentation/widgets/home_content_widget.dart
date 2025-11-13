import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dosh_puja_section_widget.dart';
import 'life_ceremonies_section_widget.dart';
import 'panchang_section_widget.dart';
import 'recommended_puja_section_widget.dart';
import 'spiritual_learning_section_widget.dart';
import 'testimonials_section_widget.dart';

/// Home content widget
///
/// Displays all content sections for the home page including
/// Panchang, Recommended Puja, Dosh Puja, Spiritual Learning,
/// Life Ceremonies, and Testimonials.
class HomeContentWidget extends StatelessWidget {
  /// User's name for personalized greeting
  final String userName;

  const HomeContentWidget({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 16.h),
          PanchangSectionWidget(userName: userName),
          SizedBox(height: 24.h),
          const RecommendedPujaSectionWidget(),
          SizedBox(height: 16.h),
          const DoshPujaSectionWidget(),
          SizedBox(height: 8.h),
          const SpiritualLearningSectionWidget(),
          SizedBox(height: 16.h),
          const LifeCeremoniesSectionWidget(),
          SizedBox(height: 24.h),
          const TestimonialsSectionWidget(),
        ],
      ),
    );
  }
}
