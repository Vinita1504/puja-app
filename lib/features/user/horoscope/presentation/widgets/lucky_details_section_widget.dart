import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/horoscope_details.dart';
import 'lucky_color_card_widget.dart';
import 'lucky_number_card_widget.dart';
import 'lucky_alphabets_card_widget.dart';

/// Lucky details section widget
///
/// Container for the three lucky detail cards arranged horizontally.
class LuckyDetailsSectionWidget extends StatelessWidget {
  final HoroscopeDetails horoscopeDetails;

  const LuckyDetailsSectionWidget({
    super.key,
    required this.horoscopeDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: LuckyColorCardWidget(
              luckyColors: horoscopeDetails.luckyColors,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: LuckyNumberCardWidget(
              luckyNumbers: horoscopeDetails.luckyNumbers,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: LuckyAlphabetsCardWidget(
              luckyAlphabets: horoscopeDetails.luckyAlphabets,
            ),
          ),
        ],
      ),
    );
  }
}

