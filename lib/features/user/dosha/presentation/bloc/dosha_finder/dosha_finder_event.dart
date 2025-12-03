import 'package:flutter/material.dart';

/// Dosha finder events
abstract class DoshaFinderEvent {
  const DoshaFinderEvent();
}

/// Date of birth changed
class DateOfBirthChanged extends DoshaFinderEvent {
  final DateTime date;

  const DateOfBirthChanged({required this.date});
}

/// Time of birth changed
class TimeOfBirthChanged extends DoshaFinderEvent {
  final TimeOfDay time;

  const TimeOfBirthChanged({required this.time});
}

/// Place of birth changed
class PlaceOfBirthChanged extends DoshaFinderEvent {
  final String place;

  const PlaceOfBirthChanged({required this.place});
}

/// Dosha type selected
class DoshaTypeSelected extends DoshaFinderEvent {
  final String type;

  const DoshaTypeSelected({required this.type});
}

/// Find dosha requested - triggers validation and navigation
class FindDoshaRequested extends DoshaFinderEvent {
  const FindDoshaRequested();
}

