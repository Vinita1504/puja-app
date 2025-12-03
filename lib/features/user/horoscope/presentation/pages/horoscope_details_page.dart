import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/horoscope_details/horoscope_details_bloc.dart';
import '../bloc/horoscope_details/horoscope_details_event.dart';
import '../bloc/horoscope_details/horoscope_details_state.dart';
import '../widgets/horoscope_content_widget.dart';

/// Horoscope details page
///
/// Displays daily horoscope information including lucky colors, numbers,
/// alphabets, and total score for Daily Sun or Daily Moon.
class HoroscopeDetailsPage extends StatelessWidget {
  const HoroscopeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.surface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Horoscope'),
        centerTitle: true,
      ),
      body: BlocBuilder<HoroscopeDetailsBloc, HoroscopeDetailsState>(
        builder: (context, state) {
          if (state is HoroscopeDetailsInitial) {
            // Load horoscope details on initial state
            context
                .read<HoroscopeDetailsBloc>()
                .add(const HoroscopeDetailsLoaded());
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HoroscopeDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HoroscopeDetailsLoadedState) {
            return HoroscopeContentWidget(
              horoscopeDetails: state.horoscopeDetails,
              selectedType: state.selectedType,
            );
          } else if (state is HoroscopeDetailsError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.message,
                    style: context.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HoroscopeDetailsBloc>().add(
                            const HoroscopeDetailsLoaded(),
                          );
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
