import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/horoscope_details.dart';
import 'horoscope_category_card_widget.dart';

/// Horoscope categories section widget
///
/// Displays the "What Horoscope Says About you" section
/// with a list of horoscope category cards.
class HoroscopeCategoriesSectionWidget extends StatelessWidget {
  final HoroscopeDetails horoscopeDetails;

  const HoroscopeCategoriesSectionWidget({
    super.key,
    required this.horoscopeDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
          child: Text(
            'What Horoscope Says About you',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        // Category cards list
        ...horoscopeDetails.categories.map(
          (category) => HoroscopeCategoryCardWidget(
            category: category,
          ),
        ),
      ],
    );
  }
}

