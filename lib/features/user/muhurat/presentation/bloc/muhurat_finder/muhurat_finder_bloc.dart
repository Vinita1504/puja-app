import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'muhurat_finder_event.dart';
import 'muhurat_finder_state.dart';

/// Muhurat finder BLoC
///
/// Manages the state of the muhurat finder page,
/// including form data (date, time, place).
class MuhuratFinderBloc
    extends Bloc<MuhuratFinderEvent, MuhuratFinderState> {
  MuhuratFinderBloc() : super(const MuhuratFinderInitial()) {
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<TimeOfBirthChanged>(_onTimeOfBirthChanged);
    on<PlaceOfBirthChanged>(_onPlaceOfBirthChanged);
    on<MuhuratFinderRequested>(_onMuhuratFinderRequested);
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<MuhuratFinderState> emit,
  ) {
    if (state is MuhuratFinderInitial) {
      emit(
        MuhuratFinderLoaded(dateOfBirth: event.date),
      );
    } else if (state is MuhuratFinderLoaded) {
      final currentState = state as MuhuratFinderLoaded;
      emit(
        currentState.copyWith(dateOfBirth: event.date),
      );
    }
  }

  void _onTimeOfBirthChanged(
    TimeOfBirthChanged event,
    Emitter<MuhuratFinderState> emit,
  ) {
    if (state is MuhuratFinderInitial) {
      emit(
        MuhuratFinderLoaded(timeOfBirth: event.time),
      );
    } else if (state is MuhuratFinderLoaded) {
      final currentState = state as MuhuratFinderLoaded;
      emit(
        currentState.copyWith(timeOfBirth: event.time),
      );
    }
  }

  void _onPlaceOfBirthChanged(
    PlaceOfBirthChanged event,
    Emitter<MuhuratFinderState> emit,
  ) {
    if (state is MuhuratFinderInitial) {
      emit(
        MuhuratFinderLoaded(placeOfBirth: event.place),
      );
    } else if (state is MuhuratFinderLoaded) {
      final currentState = state as MuhuratFinderLoaded;
      emit(
        currentState.copyWith(placeOfBirth: event.place),
      );
    }
  }

  void _onMuhuratFinderRequested(
    MuhuratFinderRequested event,
    Emitter<MuhuratFinderState> emit,
  ) {
    // Get current form data
    MuhuratFinderLoaded formData;
    if (state is MuhuratFinderLoaded) {
      formData = state as MuhuratFinderLoaded;
    } else {
      formData = const MuhuratFinderLoaded();
    }

    // Emit success state with available data
    emit(
      MuhuratFinderSuccess(
        dateOfBirth: formData.dateOfBirth ?? DateTime.now(),
        timeOfBirth: formData.timeOfBirth ?? TimeOfDay.now(),
        placeOfBirth: formData.placeOfBirth,
      ),
    );
  }
}

