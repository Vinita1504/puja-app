import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/muhurat_result.dart';
import 'day_muhurat_section_widget.dart';
import 'night_muhurat_section_widget.dart';
import 'choghadiya_card_widget.dart';

/// Choghadiya tab content widget
///
/// Displays day and night Choghadiya muhurats in separate sections.
class ChoghadiyaTabContentWidget extends StatelessWidget {
  /// Muhurat result data
  final MuhuratResult muhuratResult;

  const ChoghadiyaTabContentWidget({
    super.key,
    required this.muhuratResult,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Day Muhurat Section
          const DayMuhuratSectionWidget(),
          ...muhuratResult.dayMuhurats.map(
            (muhurat) => ChoghadiyaCardWidget(muhurat: muhurat),
          ),

          // Night Muhurat Section
          const NightMuhuratSectionWidget(),
          ...muhuratResult.nightMuhurats.map(
            (muhurat) => ChoghadiyaCardWidget(muhurat: muhurat),
          ),

          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}

