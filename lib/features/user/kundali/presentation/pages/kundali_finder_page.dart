import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import '../bloc/kundali_finder/kundali_finder_bloc.dart';
import '../bloc/kundali_finder/kundali_finder_event.dart';
import '../bloc/kundali_finder/kundali_finder_state.dart';
import '../widgets/kundali_finder_widgets/kundali_finder_header_widget.dart';
import '../widgets/kundali_finder_widgets/birth_details_section_widget.dart';
import '../widgets/kundali_finder_widgets/kundali_finder_button_widget.dart';

/// Kundali finder page
///
/// Displays a form for entering birth details (date, time, place)
/// to find kundali.
class KundaliFinderPage extends StatefulWidget {
  const KundaliFinderPage({super.key});

  @override
  State<KundaliFinderPage> createState() => _KundaliFinderPageState();
}

class _KundaliFinderPageState extends State<KundaliFinderPage> {
  final TextEditingController _placeOfBirthController =
      TextEditingController();

  @override
  void dispose() {
    _placeOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<KundaliFinderBloc, KundaliFinderState>(
      listener: (context, state) {
        if (state is KundaliFinderSuccess) {
          // Navigate to result page
          context.push(AppRoutes.kundaliFinderResult);
        }
      },
      child: BlocBuilder<KundaliFinderBloc, KundaliFinderState>(
        builder: (context, state) {
          final formData = state is KundaliFinderLoaded
              ? state
              : const KundaliFinderLoaded();

          final isLoading = state is KundaliFinderLoading;

          return Scaffold(
            appBar: const KundaliFinderHeaderWidget(),
            body: SingleChildScrollView(
              padding: context.defaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  BirthDetailsSectionWidget(
                    dateOfBirth: formData.dateOfBirth,
                    onDateSelected: (date) {
                      context.read<KundaliFinderBloc>().add(
                            DateOfBirthChanged(date: date),
                          );
                    },
                    timeOfBirth: formData.timeOfBirth,
                    onTimeSelected: (time) {
                      context.read<KundaliFinderBloc>().add(
                            TimeOfBirthChanged(time: time),
                          );
                    },
                    placeOfBirthController: _placeOfBirthController,
                  ),
                  SizedBox(height: 32.h),
                  KundaliFinderButtonWidget(
                    onPressed: () {
                      // Update place of birth in BLoC
                      context.read<KundaliFinderBloc>().add(
                            PlaceOfBirthChanged(
                              place: _placeOfBirthController.text,
                            ),
                          );
                      // Trigger kundali finder request
                      context.read<KundaliFinderBloc>().add(
                            const KundaliFinderRequested(),
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

