import 'package:flutter/material.dart';

/// Know about yourself state
abstract class KnowAboutYourselfState {
  const KnowAboutYourselfState();
}

/// Initial state
class KnowAboutYourselfInitial extends KnowAboutYourselfState {
  const KnowAboutYourselfInitial();
}

/// Loaded state with form data
class KnowAboutYourselfLoaded extends KnowAboutYourselfState {
  final DateTime? dateOfBirth;
  final TimeOfDay? timeOfBirth;
  final String placeOfBirth;

  const KnowAboutYourselfLoaded({
    this.dateOfBirth,
    this.timeOfBirth,
    this.placeOfBirth = '',
  });

  KnowAboutYourselfLoaded copyWith({
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
  }) {
    return KnowAboutYourselfLoaded(
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      timeOfBirth: timeOfBirth ?? this.timeOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
    );
  }
}

/// Loading state - when submission is in progress
class KnowAboutYourselfLoading extends KnowAboutYourselfState {
  const KnowAboutYourselfLoading();
}

/// Success state - when submission is successful (triggers navigation)
class KnowAboutYourselfSuccess extends KnowAboutYourselfState {
  final DateTime dateOfBirth;
  final TimeOfDay timeOfBirth;
  final String placeOfBirth;

  const KnowAboutYourselfSuccess({
    required this.dateOfBirth,
    required this.timeOfBirth,
    required this.placeOfBirth,
  });
}

