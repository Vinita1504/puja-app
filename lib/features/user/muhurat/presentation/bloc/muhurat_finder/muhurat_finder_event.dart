import 'package:flutter/material.dart';

/// Muhurat finder events
abstract class MuhuratFinderEvent {
  const MuhuratFinderEvent();
}

/// Date of birth changed
class DateOfBirthChanged extends MuhuratFinderEvent {
  final DateTime date;

  const DateOfBirthChanged({required this.date});
}

/// Time of birth changed
class TimeOfBirthChanged extends MuhuratFinderEvent {
  final TimeOfDay time;

  const TimeOfBirthChanged({required this.time});
}

/// Place of birth changed
class PlaceOfBirthChanged extends MuhuratFinderEvent {
  final String place;

  const PlaceOfBirthChanged({required this.place});
}

/// Muhurat finder requested - triggers submission
class MuhuratFinderRequested extends MuhuratFinderEvent {
  const MuhuratFinderRequested();
}

