import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import '../bloc/muhurat_finder/muhurat_finder_bloc.dart';
import '../bloc/muhurat_finder/muhurat_finder_event.dart';
import '../bloc/muhurat_finder/muhurat_finder_state.dart';
import '../widgets/muhurat_finder_header_widget.dart';
import '../widgets/birth_details_section_widget.dart';
import '../widgets/muhurat_finder_button_widget.dart';

/// Muhurat finder page
///
/// Displays a form for entering birth details (date, time, place)
/// to find muhurat.
class MuhuratFinderPage extends StatefulWidget {
  const MuhuratFinderPage({super.key});

  @override
  State<MuhuratFinderPage> createState() => _MuhuratFinderPageState();
}

class _MuhuratFinderPageState extends State<MuhuratFinderPage> {
  final TextEditingController _placeOfBirthController =
      TextEditingController();

  @override
  void dispose() {
    _placeOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MuhuratFinderBloc, MuhuratFinderState>(
      listener: (context, state) {
        if (state is MuhuratFinderSuccess) {
          // Navigate to result page
          context.push(AppRoutes.muhuratFinderResult);
        }
      },
      child: BlocBuilder<MuhuratFinderBloc, MuhuratFinderState>(
        builder: (context, state) {
          final formData = state is MuhuratFinderLoaded
              ? state
              : const MuhuratFinderLoaded();

          final isLoading = state is MuhuratFinderLoading;

          return Scaffold(
            appBar: MuhuratFinderHeaderWidget(
              
            ),
            body: SingleChildScrollView(
              padding: context.defaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  BirthDetailsSectionWidget(
                    dateOfBirth: formData.dateOfBirth,
                    onDateSelected: (date) {
                      context.read<MuhuratFinderBloc>().add(
                            DateOfBirthChanged(date: date),
                          );
                    },
                    timeOfBirth: formData.timeOfBirth,
                    onTimeSelected: (time) {
                      context.read<MuhuratFinderBloc>().add(
                            TimeOfBirthChanged(time: time),
                          );
                    },
                    placeOfBirthController: _placeOfBirthController,
                  ),
                  SizedBox(height: 32.h),
                  MuhuratFinderButtonWidget(
                    onPressed: () {
                      // Update place of birth in BLoC
                      context.read<MuhuratFinderBloc>().add(
                            PlaceOfBirthChanged(
                              place: _placeOfBirthController.text,
                            ),
                          );
                      // Trigger muhurat finder request
                      context.read<MuhuratFinderBloc>().add(
                            const MuhuratFinderRequested(),
                          );
                    },
                    isEnabled: !isLoading,
                  ),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

