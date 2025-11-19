import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/edit_profile/edit_profile_bloc.dart';
import '../bloc/edit_profile/edit_profile_event.dart';
import '../bloc/edit_profile/edit_profile_state.dart';
import '../widgets/edit_profile_widgets/name_input_widget.dart';
import '../widgets/edit_profile_widgets/gender_selection_widget.dart';
import '../widgets/edit_profile_widgets/contact_number_input_widget.dart';
import '../widgets/edit_profile_widgets/email_input_widget.dart';
import '../widgets/edit_profile_widgets/date_of_birth_input_widget.dart';
import '../widgets/edit_profile_widgets/time_of_birth_input_widget.dart';
import '../widgets/edit_profile_widgets/place_of_birth_input_widget.dart';
import '../widgets/edit_profile_widgets/address_section_widget.dart';
import '../widgets/edit_profile_widgets/update_profile_button_widget.dart';

/// Edit profile page
///
/// Displays a form for editing user profile information including
/// name, gender, contact number, email, date/time of birth, place of birth,
/// and address details.
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  late final TextEditingController _contactNumberController;
  late final TextEditingController _emailController;
  late final TextEditingController _placeOfBirthController;
  late final TextEditingController _pinCodeController;
  late final TextEditingController _stateController;
  late final TextEditingController _cityController;
  late final TextEditingController _addressLineController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _contactNumberController = TextEditingController();
    _emailController = TextEditingController();
    _placeOfBirthController = TextEditingController();
    _pinCodeController = TextEditingController();
    _stateController = TextEditingController();
    _cityController = TextEditingController();
    _addressLineController = TextEditingController();

    // Load profile data
    context.read<EditProfileBloc>().add(const EditProfileEvent.profileLoaded());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contactNumberController.dispose();
    _emailController.dispose();
    _placeOfBirthController.dispose();
    _pinCodeController.dispose();
    _stateController.dispose();
    _cityController.dispose();
    _addressLineController.dispose();
    super.dispose();
  }

  void _updateControllersFromState(EditProfileState state) {
    state.whenOrNull(
      loaded:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) {
            if (_nameController.text != name) _nameController.text = name;
            if (_contactNumberController.text != contactNumber) {
              _contactNumberController.text = contactNumber;
            }
            if (_emailController.text != email) _emailController.text = email;
            if (_placeOfBirthController.text != (placeOfBirth ?? '')) {
              _placeOfBirthController.text = placeOfBirth ?? '';
            }
            if (_pinCodeController.text != pinCode) {
              _pinCodeController.text = pinCode;
            }
            if (_stateController.text != stateValue) {
              _stateController.text = stateValue;
            }
            if (_cityController.text != city) _cityController.text = city;
            if (_addressLineController.text != addressLine) {
              _addressLineController.text = addressLine;
            }
          },
      updating:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) {
            if (_nameController.text != name) _nameController.text = name;
            if (_contactNumberController.text != contactNumber) {
              _contactNumberController.text = contactNumber;
            }
            if (_emailController.text != email) _emailController.text = email;
            if (_placeOfBirthController.text != (placeOfBirth ?? '')) {
              _placeOfBirthController.text = placeOfBirth ?? '';
            }
            if (_pinCodeController.text != pinCode) {
              _pinCodeController.text = pinCode;
            }
            if (_stateController.text != stateValue) {
              _stateController.text = stateValue;
            }
            if (_cityController.text != city) _cityController.text = city;
            if (_addressLineController.text != addressLine) {
              _addressLineController.text = addressLine;
            }
          },
    );
  }

  String? _getGender(EditProfileState state) {
    return state.whenOrNull(
      loaded:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => gender,
      updating:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => gender,
    );
  }

  DateTime? _getDateOfBirth(EditProfileState state) {
    return state.whenOrNull(
      loaded:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => dateOfBirth,
      updating:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => dateOfBirth,
    );
  }

  TimeOfDay? _getTimeOfBirth(EditProfileState state) {
    return state.whenOrNull(
      loaded:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => timeOfBirth,
      updating:
          (
            name,
            gender,
            contactNumber,
            email,
            dateOfBirth,
            timeOfBirth,
            placeOfBirth,
            pinCode,
            stateValue,
            city,
            addressLine,
          ) => timeOfBirth,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.surface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Update Profile',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart with default values
              // TODO: Replace with actual cart state management when available
              context.push('/pujaCart/default/default');
            },
          ),
        ],
      ),
      body: BlocConsumer<EditProfileBloc, EditProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Profile updated successfully'),
                  backgroundColor: Colors.green,
                ),
              );
              context.pop();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          _updateControllersFromState(state);

          final isLoading = state.maybeWhen(
            loading: () => true,
            updating:
                (
                  _,
                  __,
                  ___,
                  ____,
                  _____,
                  ______,
                  _______,
                  ________,
                  _________,
                  __________,
                  ___________,
                ) => true,
            orElse: () => false,
          );

          final isLoadedOrUpdating = state.maybeWhen(
            loaded:
                (
                  _,
                  __,
                  ___,
                  ____,
                  _____,
                  ______,
                  _______,
                  ________,
                  _________,
                  __________,
                  ___________,
                ) => true,
            updating:
                (
                  _,
                  __,
                  ___,
                  ____,
                  _____,
                  ______,
                  _______,
                  ________,
                  _________,
                  __________,
                  ___________,
                ) => true,
            orElse: () => false,
          );

          if (!isLoadedOrUpdating) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameInputWidget(controller: _nameController),
                  SizedBox(height: 16.h),
                  GenderSelectionWidget(
                    selectedGender: _getGender(state),
                    onGenderSelected: (selectedGender) {
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.genderChanged(selectedGender),
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  ContactNumberInputWidget(
                    controller: _contactNumberController,
                  ),
                  SizedBox(height: 16.h),
                  EmailInputWidget(controller: _emailController),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: DateOfBirthInputWidget(
                          dateOfBirth: _getDateOfBirth(state),
                          onDateSelected: (date) {
                            context.read<EditProfileBloc>().add(
                              EditProfileEvent.dateOfBirthChanged(date),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: TimeOfBirthInputWidget(
                          timeOfBirth: _getTimeOfBirth(state),
                          onTimeSelected: (time) {
                            context.read<EditProfileBloc>().add(
                              EditProfileEvent.timeOfBirthChanged(time),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  PlaceOfBirthInputWidget(controller: _placeOfBirthController),
                  SizedBox(height: 16.h),
                  AddressSectionWidget(
                    pinCodeController: _pinCodeController,
                    stateController: _stateController,
                    cityController: _cityController,
                    addressLineController: _addressLineController,
                  ),
                  SizedBox(height: 24.h),
                  UpdateProfileButtonWidget(
                    isLoading: isLoading,
                    onPressed: () {
                      // Update BLoC with current form values
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.nameChanged(_nameController.text),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.contactNumberChanged(
                          _contactNumberController.text,
                        ),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.emailChanged(_emailController.text),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.placeOfBirthChanged(
                          _placeOfBirthController.text,
                        ),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.pinCodeChanged(
                          _pinCodeController.text,
                        ),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.stateChanged(_stateController.text),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.cityChanged(_cityController.text),
                      );
                      context.read<EditProfileBloc>().add(
                        EditProfileEvent.addressLineChanged(
                          _addressLineController.text,
                        ),
                      );

                      // Trigger update
                      context.read<EditProfileBloc>().add(
                        const EditProfileEvent.updateProfileRequested(),
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
