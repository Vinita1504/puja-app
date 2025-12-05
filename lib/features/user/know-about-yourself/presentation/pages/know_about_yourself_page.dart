import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import '../bloc/know_about_yourself/know_about_yourself_bloc.dart';
import '../bloc/know_about_yourself/know_about_yourself_event.dart';
import '../bloc/know_about_yourself/know_about_yourself_state.dart';
import '../widgets/know_about_yourself_header_widget.dart';
import '../widgets/birth_details_section_widget.dart';
import '../widgets/know_about_yourself_button_widget.dart';

/// Know about yourself page
///
/// Displays a form for entering birth details (date, time, place)
/// to know about yourself.
class KnowAboutYourselfPage extends StatefulWidget {
  const KnowAboutYourselfPage({super.key});

  @override
  State<KnowAboutYourselfPage> createState() => _KnowAboutYourselfPageState();
}

class _KnowAboutYourselfPageState extends State<KnowAboutYourselfPage> {
  final TextEditingController _placeOfBirthController =
      TextEditingController();

  @override
  void dispose() {
    _placeOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocListener<KnowAboutYourselfBloc, KnowAboutYourselfState>(
      listener: (context, state) {
        if (state is KnowAboutYourselfSuccess) {
          // Navigate to result page
          context.push(AppRoutes.knowAboutYourselfResult);
        }
      },
      child: BlocBuilder<KnowAboutYourselfBloc, KnowAboutYourselfState>(
        builder: (context, state) {
          final formData = state is KnowAboutYourselfLoaded
              ? state
              : const KnowAboutYourselfLoaded();

          final isLoading = state is KnowAboutYourselfLoading;

          return Scaffold(
            appBar: KnowAboutYourselfHeaderWidget(
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
                      context.read<KnowAboutYourselfBloc>().add(
                            DateOfBirthChanged(date: date),
                          );
                    },
                    timeOfBirth: formData.timeOfBirth,
                    onTimeSelected: (time) {
                      context.read<KnowAboutYourselfBloc>().add(
                            TimeOfBirthChanged(time: time),
                          );
                    },
                    placeOfBirthController: _placeOfBirthController,
                  ),
                  SizedBox(height: 32.h),
                  KnowAboutYourselfButtonWidget(
                    onPressed: () {
                      // Update place of birth in BLoC
                      context.read<KnowAboutYourselfBloc>().add(
                            PlaceOfBirthChanged(
                              place: _placeOfBirthController.text,
                            ),
                          );
                      // Trigger know about yourself request
                      context.read<KnowAboutYourselfBloc>().add(
                            const KnowAboutYourselfRequested(),
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

