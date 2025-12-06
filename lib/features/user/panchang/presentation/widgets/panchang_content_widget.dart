import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/panchang_bloc.dart';
import '../bloc/panchang_state.dart';
import 'panchang_date_card_widget.dart';
import 'panchang_tithi_card_widget.dart';
import 'panchang_sunrise_sunset_card_widget.dart';
import 'panchang_nakshatra_card_widget.dart';
import 'panchang_karana_card_widget.dart';
import 'panchang_yoga_card_widget.dart';
import 'panchang_timings_combined_card_widget.dart';
import 'panchang_advanced_details_card_widget.dart';

/// Panchang content widget
///
/// Main scrollable content container organizing all Panchang sections.
/// Handles different states (loading, loaded, error) from BLoC.
class PanchangContentWidget extends StatelessWidget {
  const PanchangContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PanchangBloc, PanchangState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => Center(
            child: CircularProgressIndicator(
              color: context.colorScheme.primary,
            ),
          ),
          loaded: (panchang) => SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PanchangDateCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangTithiCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangSunriseSunsetCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangTimingsCombinedCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangNakshatraCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangKaranaCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangYogaCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
                PanchangAdvancedDetailsCardWidget(panchang: panchang),
                SizedBox(height: 16.h),
              ],
            ),
          ),
          error: (message) => Center(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48.sp,
                    color: context.colorScheme.error,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Error loading Panchang',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: context.colorScheme.error,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    message,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

