import 'package:flutter/material.dart';

/// Kundali finder state
abstract class KundaliFinderState {
  const KundaliFinderState();
}

/// Initial state
class KundaliFinderInitial extends KundaliFinderState {
  const KundaliFinderInitial();
}

/// Loaded state with form data
class KundaliFinderLoaded extends KundaliFinderState {
  final DateTime? dateOfBirth;
  final TimeOfDay? timeOfBirth;
  final String placeOfBirth;

  const KundaliFinderLoaded({
    this.dateOfBirth,
    this.timeOfBirth,
    this.placeOfBirth = '',
  });

  KundaliFinderLoaded copyWith({
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
  }) {
    return KundaliFinderLoaded(
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      timeOfBirth: timeOfBirth ?? this.timeOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
    );
  }
}

/// Loading state - when submission is in progress
class KundaliFinderLoading extends KundaliFinderState {
  const KundaliFinderLoading();
}

/// Success state - when submission is successful (triggers navigation)
class KundaliFinderSuccess extends KundaliFinderState {
  final DateTime dateOfBirth;
  final TimeOfDay timeOfBirth;
  final String placeOfBirth;

  const KundaliFinderSuccess({
    required this.dateOfBirth,
    required this.timeOfBirth,
    required this.placeOfBirth,
  });
}

