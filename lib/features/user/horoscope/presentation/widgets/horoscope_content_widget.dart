import 'package:flutter/material.dart';
import '../../domain/entities/horoscope_details.dart';
import 'horoscope_type_chips_widget.dart';
import 'lucky_details_section_widget.dart';
import 'total_score_card_widget.dart';
import 'horoscope_categories_section_widget.dart';

/// Horoscope content widget
///
/// Main content container that displays all horoscope details.
class HoroscopeContentWidget extends StatelessWidget {
  final HoroscopeDetails horoscopeDetails;
  final String selectedType;

  const HoroscopeContentWidget({
    super.key,
    required this.horoscopeDetails,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Daily Sun / Daily Moon chips
          HoroscopeTypeChipsWidget(selectedType: selectedType),
          // Lucky details cards
          LuckyDetailsSectionWidget(horoscopeDetails: horoscopeDetails),
          // Total score card
          TotalScoreCardWidget(
            totalScore: horoscopeDetails.totalScore,
            description: horoscopeDetails.description,
          ),
          // Horoscope categories section
          HoroscopeCategoriesSectionWidget(
            horoscopeDetails: horoscopeDetails,
          ),
        ],
      ),
    );
  }
}

