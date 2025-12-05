import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/know_about_yourself_result.dart';
import 'know_about_yourself_result_card_widget.dart';

/// Know about yourself result list widget
///
/// Displays a scrollable list of 7 personal attribute cards.
/// Uses mock data from domain entity.
class KnowAboutYourselfResultListWidget extends StatelessWidget {
  const KnowAboutYourselfResultListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final result = KnowAboutYourselfResultEntity.mock();

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KnowAboutYourselfResultCardWidget(section: result.destiny),
          KnowAboutYourselfResultCardWidget(section: result.personality),
          KnowAboutYourselfResultCardWidget(section: result.attitude),
          KnowAboutYourselfResultCardWidget(section: result.character),
          KnowAboutYourselfResultCardWidget(section: result.soul),
          KnowAboutYourselfResultCardWidget(section: result.agenda),
          KnowAboutYourselfResultCardWidget(section: result.purpose),
        ],
      ),
    );
  }
}

