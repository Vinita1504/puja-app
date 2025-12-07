import 'package:flutter/material.dart';

/// Kundali finder events
abstract class KundaliFinderEvent {
  const KundaliFinderEvent();
}

/// Date of birth changed
class DateOfBirthChanged extends KundaliFinderEvent {
  final DateTime date;

  const DateOfBirthChanged({required this.date});
}

/// Time of birth changed
class TimeOfBirthChanged extends KundaliFinderEvent {
  final TimeOfDay time;

  const TimeOfBirthChanged({required this.time});
}

/// Place of birth changed
class PlaceOfBirthChanged extends KundaliFinderEvent {
  final String place;

  const PlaceOfBirthChanged({required this.place});
}

/// Kundali finder requested - triggers submission
class KundaliFinderRequested extends KundaliFinderEvent {
  const KundaliFinderRequested();
}

