import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'know_about_yourself_event.dart';
import 'know_about_yourself_state.dart';

/// Know about yourself BLoC
///
/// Manages the state of the know about yourself page,
/// including form data (date, time, place).
class KnowAboutYourselfBloc
    extends Bloc<KnowAboutYourselfEvent, KnowAboutYourselfState> {
  KnowAboutYourselfBloc() : super(const KnowAboutYourselfInitial()) {
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<TimeOfBirthChanged>(_onTimeOfBirthChanged);
    on<PlaceOfBirthChanged>(_onPlaceOfBirthChanged);
    on<KnowAboutYourselfRequested>(_onKnowAboutYourselfRequested);
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<KnowAboutYourselfState> emit,
  ) {
    if (state is KnowAboutYourselfInitial) {
      emit(
        KnowAboutYourselfLoaded(dateOfBirth: event.date),
      );
    } else if (state is KnowAboutYourselfLoaded) {
      final currentState = state as KnowAboutYourselfLoaded;
      emit(
        currentState.copyWith(dateOfBirth: event.date),
      );
    }
  }

  void _onTimeOfBirthChanged(
    TimeOfBirthChanged event,
    Emitter<KnowAboutYourselfState> emit,
  ) {
    if (state is KnowAboutYourselfInitial) {
      emit(
        KnowAboutYourselfLoaded(timeOfBirth: event.time),
      );
    } else if (state is KnowAboutYourselfLoaded) {
      final currentState = state as KnowAboutYourselfLoaded;
      emit(
        currentState.copyWith(timeOfBirth: event.time),
      );
    }
  }

  void _onPlaceOfBirthChanged(
    PlaceOfBirthChanged event,
    Emitter<KnowAboutYourselfState> emit,
  ) {
    if (state is KnowAboutYourselfInitial) {
      emit(
        KnowAboutYourselfLoaded(placeOfBirth: event.place),
      );
    } else if (state is KnowAboutYourselfLoaded) {
      final currentState = state as KnowAboutYourselfLoaded;
      emit(
        currentState.copyWith(placeOfBirth: event.place),
      );
    }
  }

  void _onKnowAboutYourselfRequested(
    KnowAboutYourselfRequested event,
    Emitter<KnowAboutYourselfState> emit,
  ) {
    // Get current form data
    KnowAboutYourselfLoaded formData;
    if (state is KnowAboutYourselfLoaded) {
      formData = state as KnowAboutYourselfLoaded;
    } else {
      formData = const KnowAboutYourselfLoaded();
    }

    // Emit success state with available data
    emit(
      KnowAboutYourselfSuccess(
        dateOfBirth: formData.dateOfBirth ?? DateTime.now(),
        timeOfBirth: formData.timeOfBirth ?? TimeOfDay.now(),
        placeOfBirth: formData.placeOfBirth,
      ),
    );
  }
}

