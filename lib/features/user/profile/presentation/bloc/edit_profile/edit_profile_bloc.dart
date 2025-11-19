import 'package:flutter_bloc/flutter_bloc.dart';
import 'edit_profile_event.dart';
import 'edit_profile_state.dart';

/// Edit profile BLoC
///
/// Manages the state of the edit profile form and handles form updates.
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(const EditProfileState.initial()) {
    on<ProfileLoaded>(_onProfileLoaded);
    on<NameChanged>(_onNameChanged);
    on<GenderChanged>(_onGenderChanged);
    on<ContactNumberChanged>(_onContactNumberChanged);
    on<EmailChanged>(_onEmailChanged);
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<TimeOfBirthChanged>(_onTimeOfBirthChanged);
    on<PlaceOfBirthChanged>(_onPlaceOfBirthChanged);
    on<PinCodeChanged>(_onPinCodeChanged);
    on<StateChanged>(_onStateChanged);
    on<CityChanged>(_onCityChanged);
    on<AddressLineChanged>(_onAddressLineChanged);
    on<UpdateProfileRequested>(_onUpdateProfileRequested);
  }

  Future<void> _onProfileLoaded(
    ProfileLoaded event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(const EditProfileState.loading());

    // TODO: Load profile data from repository/use case
    // For now, emit initial loaded state with empty/default values
    emit(
      const EditProfileState.loaded(
        name: '',
        gender: null,
        contactNumber: '',
        email: '',
        dateOfBirth: null,
        timeOfBirth: null,
        placeOfBirth: null,
        pinCode: '',
        state: '',
        city: '',
        addressLine: '',
      ),
    );
  }

  void _onNameChanged(NameChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: event.name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onGenderChanged(GenderChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: event.gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onContactNumberChanged(
    ContactNumberChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: event.contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onEmailChanged(EmailChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: event.email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: event.dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onTimeOfBirthChanged(
    TimeOfBirthChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: event.timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onPlaceOfBirthChanged(
    PlaceOfBirthChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: event.placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onPinCodeChanged(PinCodeChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: event.pinCode,
              state: stateValue,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onStateChanged(StateChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: event.state,
              city: city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onCityChanged(CityChanged event, Emitter<EditProfileState> emit) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: event.city,
              addressLine: addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  void _onAddressLineChanged(
    AddressLineChanged event,
    Emitter<EditProfileState> emit,
  ) {
    state.maybeWhen(
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
          ) => emit(
            EditProfileState.loaded(
              name: name,
              gender: gender,
              contactNumber: contactNumber,
              email: email,
              dateOfBirth: dateOfBirth,
              timeOfBirth: timeOfBirth,
              placeOfBirth: placeOfBirth,
              pinCode: pinCode,
              state: stateValue,
              city: city,
              addressLine: event.addressLine,
            ),
          ),
      orElse: () {},
    );
  }

  Future<void> _onUpdateProfileRequested(
    UpdateProfileRequested event,
    Emitter<EditProfileState> emit,
  ) async {
    final currentState = state;
    final result = currentState.maybeWhen(
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
          ) => (
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
          ),
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
          ) => (
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
          ),
      orElse: () => null,
    );

    if (result == null) {
      emit(const EditProfileState.error('Invalid state'));
      return;
    }

    final (
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
    ) = result;

    // Validate required fields
    if (name.isEmpty) {
      emit(const EditProfileState.error('Name is required'));
      return;
    }
    if (gender == null || gender.isEmpty) {
      emit(const EditProfileState.error('Gender is required'));
      return;
    }
    if (contactNumber.isEmpty) {
      emit(const EditProfileState.error('Contact number is required'));
      return;
    }
    if (email.isEmpty) {
      emit(const EditProfileState.error('Email is required'));
      return;
    }
    if (pinCode.isEmpty) {
      emit(const EditProfileState.error('Pin code is required'));
      return;
    }
    if (stateValue.isEmpty) {
      emit(const EditProfileState.error('State is required'));
      return;
    }
    if (city.isEmpty) {
      emit(const EditProfileState.error('City is required'));
      return;
    }
    if (addressLine.isEmpty) {
      emit(const EditProfileState.error('Address is required'));
      return;
    }

    emit(
      EditProfileState.updating(
        name: name,
        gender: gender,
        contactNumber: contactNumber,
        email: email,
        dateOfBirth: dateOfBirth,
        timeOfBirth: timeOfBirth,
        placeOfBirth: placeOfBirth,
        pinCode: pinCode,
        state: stateValue,
        city: city,
        addressLine: addressLine,
      ),
    );

    // TODO: Call update profile use case
    // For now, simulate success
    await Future.delayed(const Duration(seconds: 1));
    emit(const EditProfileState.success());
  }
}
