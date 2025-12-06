import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/injection_container.dart';
import '../bloc/panchang_bloc.dart';
import '../bloc/panchang_event.dart';
import '../widgets/panchang_header_widget.dart';
import '../widgets/panchang_content_widget.dart';

/// Panchang page
///
/// Displays today's Panchang details including day, tithi, nakshatra,
/// karana, yoga, timings, and advanced details.
class PanchangPage extends StatelessWidget {
  const PanchangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PanchangBloc>()
        ..add(const PanchangEvent.panchangLoaded()),
      child: Scaffold(
        appBar: const PanchangHeaderWidget(),
        body: const PanchangContentWidget(),
      ),
    );
  }
}

