import 'package:flutter/material.dart';

/// Dosha finder state
abstract class DoshaFinderState {
  const DoshaFinderState();
}

/// Initial state
class DoshaFinderInitial extends DoshaFinderState {
  const DoshaFinderInitial();
}

/// Loaded state with form data
class DoshaFinderLoaded extends DoshaFinderState {
  final DateTime? dateOfBirth;
  final TimeOfDay? timeOfBirth;
  final String placeOfBirth;
  final String? selectedDoshaType;

  const DoshaFinderLoaded({
    this.dateOfBirth,
    this.timeOfBirth,
    this.placeOfBirth = '',
    this.selectedDoshaType,
  });

  DoshaFinderLoaded copyWith({
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
    String? selectedDoshaType,
  }) {
    return DoshaFinderLoaded(
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      timeOfBirth: timeOfBirth ?? this.timeOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      selectedDoshaType: selectedDoshaType ?? this.selectedDoshaType,
    );
  }
}

/// Validation error state
class DoshaFinderValidationError extends DoshaFinderState {
  final String message;
  final DoshaFinderLoaded formData;

  const DoshaFinderValidationError({
    required this.message,
    required this.formData,
  });
}

/// Loading state - when finding dosha (if async operation needed)
class DoshaFinderLoading extends DoshaFinderState {
  const DoshaFinderLoading();
}

/// Success state - when dosha finding is successful (triggers navigation)
class DoshaFinderSuccess extends DoshaFinderState {
  final DateTime dateOfBirth;
  final TimeOfDay timeOfBirth;
  final String placeOfBirth;
  final String selectedDoshaType;

  const DoshaFinderSuccess({
    required this.dateOfBirth,
    required this.timeOfBirth,
    required this.placeOfBirth,
    required this.selectedDoshaType,
  });
}

