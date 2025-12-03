import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/dosha_result/dosha_result_bloc.dart';
import '../bloc/dosha_result/dosha_result_state.dart';
import 'mangal_dosha_widgets/mangal_score_card_widget.dart';
import 'mangal_dosha_widgets/mangal_factors_accordion_widget.dart';
import 'mangal_dosha_widgets/mangal_suggestion_card_widget.dart';
import 'sankhpal_dosha_widgets/shankhpal_overview_card_widget.dart';
import 'sankhpal_dosha_widgets/shankhpal_meaning_accordion_widget.dart';
import 'sankhpal_dosha_widgets/shankhpal_remedies_list_widget.dart';

/// Dosha result content widget
///
/// Main content container that switches between Mangal and Shankhpal content
/// based on the selected tab.
class DoshaResultContentWidget extends StatelessWidget {
  const DoshaResultContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoshaResultBloc, DoshaResultState>(
      builder: (context, state) {
        if (state is DoshaResultLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is DoshaResultError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.message,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        if (state is DoshaResultLoadedState) {
          final selectedTabIndex = state.selectedTabIndex;

          if (selectedTabIndex == 0) {
            // Mangal tab
            if (state.mangalDoshaResult == null) {
              return const Center(
                child: Text('Mangal dosha data not available'),
              );
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MangalScoreCardWidget(
                    mangalDoshaResult: state.mangalDoshaResult!,
                  ),
                  MangalFactorsAccordionWidget(
                    mangalDoshaResult: state.mangalDoshaResult!,
                  ),
                  const MangalSuggestionCardWidget(),
                ],
              ),
            );
          } else {
            // Shankhpal tab
            if (state.shankhpalDoshaResult == null) {
              return const Center(
                child: Text('Shankhpal dosha data not available'),
              );
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShankhpalOverviewCardWidget(
                    shankhpalDoshaResult: state.shankhpalDoshaResult!,
                  ),
                  ShankhpalMeaningAccordionWidget(
                    shankhpalDoshaResult: state.shankhpalDoshaResult!,
                  ),
                  ShankhpalRemediesListWidget(
                    shankhpalDoshaResult: state.shankhpalDoshaResult!,
                  ),
                ],
              ),
            );
          }
        }

        return const SizedBox.shrink();
      },
    );
  }
}

