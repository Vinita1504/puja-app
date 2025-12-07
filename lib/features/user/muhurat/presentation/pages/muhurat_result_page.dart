import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/injection_container.dart';
import '../bloc/muhurat_result/muhurat_result_bloc.dart';
import '../bloc/muhurat_result/muhurat_result_event.dart';
import '../bloc/muhurat_result/muhurat_result_state.dart';
import '../widgets/muhurat_result_widgets/muhurat_result_header_widget.dart';
import '../widgets/muhurat_result_widgets/muhurat_tab_bar_widget.dart';
import '../widgets/muhurat_result_widgets/choghadiya_tab_content_widget.dart';
import '../widgets/muhurat_result_widgets/hora_tab_content_widget.dart';

/// Muhurat result page
///
/// Displays muhurat results with two tabs: Choghadiya and Hora.
/// Shows detailed muhurat information with time slots and recommendations.
class MuhuratResultPage extends StatelessWidget {
  const MuhuratResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<MuhuratResultBloc>()..add(const MuhuratResultLoaded()),
      child: Scaffold(
        appBar: const MuhuratResultHeaderWidget(),
        body: BlocBuilder<MuhuratResultBloc, MuhuratResultState>(
          builder: (context, state) {
            if (state is MuhuratResultInitial ||
                state is MuhuratResultLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is MuhuratResultError) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading muhurat data',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.message,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }

            if (state is MuhuratResultLoadedState) {
              final selectedTabIndex = state.selectedTabIndex;
              final muhuratResult = state.muhuratResult;

              return Column(
                children: [
                  const MuhuratTabBarWidget(),
                  Expanded(
                    child: selectedTabIndex == 0
                        ? ChoghadiyaTabContentWidget(
                            muhuratResult: muhuratResult,
                          )
                        : HoraTabContentWidget(
                            muhuratResult: muhuratResult,
                          ),
                  ),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

