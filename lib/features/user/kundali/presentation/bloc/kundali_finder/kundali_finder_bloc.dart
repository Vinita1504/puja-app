import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'kundali_finder_event.dart';
import 'kundali_finder_state.dart';

/// Kundali finder BLoC
///
/// Manages the state of the kundali finder page,
/// including form data (date, time, place).
class KundaliFinderBloc
    extends Bloc<KundaliFinderEvent, KundaliFinderState> {
  KundaliFinderBloc() : super(const KundaliFinderInitial()) {
    on<DateOfBirthChanged>(_onDateOfBirthChanged);
    on<TimeOfBirthChanged>(_onTimeOfBirthChanged);
    on<PlaceOfBirthChanged>(_onPlaceOfBirthChanged);
    on<KundaliFinderRequested>(_onKundaliFinderRequested);
  }

  void _onDateOfBirthChanged(
    DateOfBirthChanged event,
    Emitter<KundaliFinderState> emit,
  ) {
    if (state is KundaliFinderInitial) {
      emit(
        KundaliFinderLoaded(dateOfBirth: event.date),
      );
    } else if (state is KundaliFinderLoaded) {
      final currentState = state as KundaliFinderLoaded;
      emit(
        currentState.copyWith(dateOfBirth: event.date),
      );
    }
  }

  void _onTimeOfBirthChanged(
    TimeOfBirthChanged event,
    Emitter<KundaliFinderState> emit,
  ) {
    if (state is KundaliFinderInitial) {
      emit(
        KundaliFinderLoaded(timeOfBirth: event.time),
      );
    } else if (state is KundaliFinderLoaded) {
      final currentState = state as KundaliFinderLoaded;
      emit(
        currentState.copyWith(timeOfBirth: event.time),
      );
    }
  }

  void _onPlaceOfBirthChanged(
    PlaceOfBirthChanged event,
    Emitter<KundaliFinderState> emit,
  ) {
    if (state is KundaliFinderInitial) {
      emit(
        KundaliFinderLoaded(placeOfBirth: event.place),
      );
    } else if (state is KundaliFinderLoaded) {
      final currentState = state as KundaliFinderLoaded;
      emit(
        currentState.copyWith(placeOfBirth: event.place),
      );
    }
  }

  void _onKundaliFinderRequested(
    KundaliFinderRequested event,
    Emitter<KundaliFinderState> emit,
  ) {
    // Get current form data
    KundaliFinderLoaded formData;
    if (state is KundaliFinderLoaded) {
      formData = state as KundaliFinderLoaded;
    } else {
      formData = const KundaliFinderLoaded();
    }

    // Emit success state with available data
    emit(
      KundaliFinderSuccess(
        dateOfBirth: formData.dateOfBirth ?? DateTime.now(),
        timeOfBirth: formData.timeOfBirth ?? TimeOfDay.now(),
        placeOfBirth: formData.placeOfBirth,
      ),
    );
  }
}

