import 'package:flutter/material.dart';

/// Muhurat finder state
abstract class MuhuratFinderState {
  const MuhuratFinderState();
}

/// Initial state
class MuhuratFinderInitial extends MuhuratFinderState {
  const MuhuratFinderInitial();
}

/// Loaded state with form data
class MuhuratFinderLoaded extends MuhuratFinderState {
  final DateTime? dateOfBirth;
  final TimeOfDay? timeOfBirth;
  final String placeOfBirth;

  const MuhuratFinderLoaded({
    this.dateOfBirth,
    this.timeOfBirth,
    this.placeOfBirth = '',
  });

  MuhuratFinderLoaded copyWith({
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
  }) {
    return MuhuratFinderLoaded(
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      timeOfBirth: timeOfBirth ?? this.timeOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
    );
  }
}

/// Loading state - when submission is in progress
class MuhuratFinderLoading extends MuhuratFinderState {
  const MuhuratFinderLoading();
}

/// Success state - when submission is successful (triggers navigation)
class MuhuratFinderSuccess extends MuhuratFinderState {
  final DateTime dateOfBirth;
  final TimeOfDay timeOfBirth;
  final String placeOfBirth;

  const MuhuratFinderSuccess({
    required this.dateOfBirth,
    required this.timeOfBirth,
    required this.placeOfBirth,
  });
}

