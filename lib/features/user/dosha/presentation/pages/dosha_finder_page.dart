import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import '../bloc/dosha_finder/dosha_finder_bloc.dart';
import '../bloc/dosha_finder/dosha_finder_event.dart';
import '../bloc/dosha_finder/dosha_finder_state.dart';
import '../widgets/dosha_header_widget.dart';
import '../widgets/birth_details_section_widget.dart';
import '../widgets/dosha_type_selection_widget.dart';
import '../widgets/dosha_find_button_widget.dart';

/// Dosha finder page
///
/// Displays a form for finding dosha based on birth details.
/// Includes birth details (date, time, place) and dosha type selection.
class DoshaFinderPage extends StatefulWidget {
  const DoshaFinderPage({super.key});

  @override
  State<DoshaFinderPage> createState() => _DoshaFinderPageState();
}

class _DoshaFinderPageState extends State<DoshaFinderPage> {
  final TextEditingController _placeOfBirthController =
      TextEditingController();

  @override
  void dispose() {
    _placeOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DoshaFinderBloc, DoshaFinderState>(
      listener: (context, state) {
        if (state is DoshaFinderValidationError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        } else if (state is DoshaFinderSuccess) {
          // Navigate to dosha result page
          context.push(AppRoutes.doshaResult);
        }
      },
      child: BlocBuilder<DoshaFinderBloc, DoshaFinderState>(
        builder: (context, state) {
          final formData = state is DoshaFinderLoaded
              ? state
              : state is DoshaFinderValidationError
                  ? state.formData
                  : const DoshaFinderLoaded();

          return Scaffold(
            appBar: DoshaHeaderWidget(
              onCartPressed: () {
                // TODO: Navigate to cart
              },
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
                      context.read<DoshaFinderBloc>().add(
                            DateOfBirthChanged(date: date),
                          );
                    },
                    timeOfBirth: formData.timeOfBirth,
                    onTimeSelected: (time) {
                      context.read<DoshaFinderBloc>().add(
                            TimeOfBirthChanged(time: time),
                          );
                    },
                    placeOfBirthController: _placeOfBirthController,
                  ),
                  SizedBox(height: 32.h),
                  DoshaTypeSelectionWidget(
                    selectedDoshaType: formData.selectedDoshaType,
                    onDoshaTypeSelected: (type) {
                      context.read<DoshaFinderBloc>().add(
                            DoshaTypeSelected(type: type),
                          );
                    },
                  ),
                  SizedBox(height: 32.h),
                  DoshaFindButtonWidget(
                    onPressed: () {
                      // Update place of birth in BLoC before validation
                      context.read<DoshaFinderBloc>().add(
                            PlaceOfBirthChanged(
                              place: _placeOfBirthController.text,
                            ),
                          );
                      // Trigger find dosha request
                      context.read<DoshaFinderBloc>().add(
                            const FindDoshaRequested(),
                          );
                    },
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

