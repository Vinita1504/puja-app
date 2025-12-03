import 'package:flutter_bloc/flutter_bloc.dart';
import 'dosha_finder_event.dart';
import 'dosha_finder_state.dart';

/// Dosha finder BLoC
///
/// Manages the state of the dosha finder page,
/// including form data (date, time, place, dosha type) and validation.
class DoshaFinderBloc extends Bloc<DoshaFinderEvent, DoshaFinderState> {
  DoshaFinderBloc() : super(const DoshaFinderInitial()) {
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<TimeOfBirthChanged>(_onTimeOfBirthChanged);
    on<PlaceOfBirthChanged>(_onPlaceOfBirthChanged);
    on<DoshaTypeSelected>(_onDoshaTypeSelected);
    on<FindDoshaRequested>(_onFindDoshaRequested);
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<DoshaFinderState> emit,
  ) {
    if (state is DoshaFinderInitial) {
      emit(
        DoshaFinderLoaded(dateOfBirth: event.date),
      );
    } else if (state is DoshaFinderLoaded) {
      final currentState = state as DoshaFinderLoaded;
      emit(
        currentState.copyWith(dateOfBirth: event.date),
      );
    }
  }

  void _onTimeOfBirthChanged(
    TimeOfBirthChanged event,
    Emitter<DoshaFinderState> emit,
  ) {
    if (state is DoshaFinderInitial) {
      emit(
        DoshaFinderLoaded(timeOfBirth: event.time),
      );
    } else if (state is DoshaFinderLoaded) {
      final currentState = state as DoshaFinderLoaded;
      emit(
        currentState.copyWith(timeOfBirth: event.time),
      );
    }
  }

  void _onPlaceOfBirthChanged(
    PlaceOfBirthChanged event,
    Emitter<DoshaFinderState> emit,
  ) {
    if (state is DoshaFinderInitial) {
      emit(
        DoshaFinderLoaded(placeOfBirth: event.place),
      );
    } else if (state is DoshaFinderLoaded) {
      final currentState = state as DoshaFinderLoaded;
      emit(
        currentState.copyWith(placeOfBirth: event.place),
      );
    }
  }

  void _onDoshaTypeSelected(
    DoshaTypeSelected event,
    Emitter<DoshaFinderState> emit,
  ) {
    if (state is DoshaFinderInitial) {
      emit(
        DoshaFinderLoaded(selectedDoshaType: event.type),
      );
    } else if (state is DoshaFinderLoaded) {
      final currentState = state as DoshaFinderLoaded;
      emit(
        currentState.copyWith(selectedDoshaType: event.type),
      );
    }
  }

  void _onFindDoshaRequested(
    FindDoshaRequested event,
    Emitter<DoshaFinderState> emit,
  ) {
    // Get current form data
    DoshaFinderLoaded formData;
    if (state is DoshaFinderLoaded) {
      formData = state as DoshaFinderLoaded;
    } else {
      formData = const DoshaFinderLoaded();
    }

    // Validate all fields
    if (formData.dateOfBirth == null) {
      emit(
        DoshaFinderValidationError(
          message: 'Please select date of birth',
          formData: formData,
        ),
      );
      return;
    }

    if (formData.timeOfBirth == null) {
      emit(
        DoshaFinderValidationError(
          message: 'Please select time of birth',
          formData: formData,
        ),
      );
      return;
    }

    if (formData.placeOfBirth.isEmpty) {
      emit(
        DoshaFinderValidationError(
          message: 'Please enter place of birth',
          formData: formData,
        ),
      );
      return;
    }

    if (formData.selectedDoshaType == null) {
      emit(
        DoshaFinderValidationError(
          message: 'Please select dosha type',
          formData: formData,
        ),
      );
      return;
    }

    // All validations passed - emit success state
    emit(
      DoshaFinderSuccess(
        dateOfBirth: formData.dateOfBirth!,
        timeOfBirth: formData.timeOfBirth!,
        placeOfBirth: formData.placeOfBirth,
        selectedDoshaType: formData.selectedDoshaType!,
      ),
    );
  }
}

