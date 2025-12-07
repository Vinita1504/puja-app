import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/kundali_result.dart';
import '../widgets/kundali_result/kundali_result_header_widget.dart';
import '../widgets/kundali_result/basic_info_card_widget.dart';
import '../widgets/kundali_result/nakshatra_card_widget.dart';
import '../widgets/kundali_result/vedic_attributes_card_widget.dart';
import '../widgets/kundali_result/gemstones_card_widget.dart';
import '../widgets/kundali_result/birth_panchang_card_widget.dart';

/// Kundali result page
///
/// Displays complete kundali analysis results including basic information,
/// nakshatra details, vedic attributes, recommended gemstones, and birth panchang.
class KundaliResultPage extends StatelessWidget {
  const KundaliResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data - will be replaced with BLoC state later
    const kundaliResult = KundaliResult(
      gana: 'rakshas',
      yoni: 'cat',
      vasya: 'Jalachara',
      nadi: 'Antya',
      varna: 'Brahmin',
      paya: 'Iron',
      tatva: 'Jal (Water)',
      lifeStone: 'coral',
      luckyStone: 'ruby',
      fortuneStone: 'yellow sapphire',
      nameStart: 'Di',
      ascendantSign: 'Aries',
      ascendantNakshatra: 'Bharani',
      rasi: 'Cancer',
      rasiLord: 'Moon',
      nakshatra: 'Ashlesha',
      nakshatraLord: 'Mercury',
      nakshatraPada: 4,
      sunSign: 'Capricorn',
      tithi: 'K.Pratipada',
      karana: 'Kaulava',
      yoga: 'Saubhagya',
    );

    return Scaffold(
      appBar: const KundaliResultHeaderWidget(),
      body: SingleChildScrollView(
        padding: context.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),

            // Basic Information Card
            BasicInfoCardWidget(kundaliResult: kundaliResult),

            // Nakshatra Details Card
            NakshatraCardWidget(kundaliResult: kundaliResult),

            // Vedic Attributes Card
            VedicAttributesCardWidget(kundaliResult: kundaliResult),

            // Recommended Gemstones Card
            GemstonesCardWidget(kundaliResult: kundaliResult),

            // Birth Panchang Card
            BirthPanchangCardWidget(kundaliResult: kundaliResult),

            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

