import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/shankhpal_dosha_result.dart';
import 'shankhpal_remedy_card_widget.dart';

/// Shankhpal remedies list widget
///
/// Displays a horizontal scrollable list of remedy cards.
class ShankhpalRemediesListWidget extends StatelessWidget {
  final ShankhpalDoshaResult shankhpalDoshaResult;

  const ShankhpalRemediesListWidget({
    super.key,
    required this.shankhpalDoshaResult,
  });

  @override
  Widget build(BuildContext context) {
    if (shankhpalDoshaResult.remedies.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Remedies',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shankhpalDoshaResult.remedies.length,
              itemBuilder: (context, index) {
                return ShankhpalRemedyCardWidget(
                  remedy: shankhpalDoshaResult.remedies[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

