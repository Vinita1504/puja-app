import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/dosha_result/dosha_result_bloc.dart';
import '../bloc/dosha_result/dosha_result_event.dart';
import '../widgets/dosha_result_header_widget.dart';
import '../widgets/dosha_result_tab_bar_widget.dart';
import '../widgets/dosha_result_content_widget.dart';

/// Dosha result page
///
/// Displays dosha analysis results with two tabs: Mangal and Shankhpal.
/// Shows score, contributing factors, remedies, and recommendations.
class DoshaResultPage extends StatelessWidget {
  const DoshaResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoshaResultBloc()..add(const DoshaResultLoaded()),
      child: Scaffold(
        appBar: const DoshaResultHeaderWidget(),
        body: Column(
          children: [
            const DoshaResultTabBarWidget(),
            const Expanded(
              child: DoshaResultContentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

