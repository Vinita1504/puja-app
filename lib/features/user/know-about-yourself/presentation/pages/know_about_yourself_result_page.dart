import 'package:flutter/material.dart';
import '../widgets/result_page_widgets/know_about_yourself_result_header_widget.dart';
import '../widgets/result_page_widgets/know_about_yourself_result_list_widget.dart';

/// Know about yourself result page
///
/// Displays the result of the "Know About Yourself" analysis
/// showing 6 personal attribute sections: Destiny, Personality,
/// Attitude, Character, Hidden Agenda, and Divine Purpose.
class KnowAboutYourselfResultPage extends StatelessWidget {
  const KnowAboutYourselfResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KnowAboutYourselfResultHeaderWidget(),
      body: const KnowAboutYourselfResultListWidget(),
    );
  }
}

