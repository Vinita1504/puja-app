import 'package:flutter/material.dart';

/// Know about yourself events
abstract class KnowAboutYourselfEvent {
  const KnowAboutYourselfEvent();
}

/// Date of birth changed
class DateOfBirthChanged extends KnowAboutYourselfEvent {
  final DateTime date;

  const DateOfBirthChanged({required this.date});
}

/// Time of birth changed
class TimeOfBirthChanged extends KnowAboutYourselfEvent {
  final TimeOfDay time;

  const TimeOfBirthChanged({required this.time});
}

/// Place of birth changed
class PlaceOfBirthChanged extends KnowAboutYourselfEvent {
  final String place;

  const PlaceOfBirthChanged({required this.place});
}

/// Know about yourself requested - triggers validation and submission
class KnowAboutYourselfRequested extends KnowAboutYourselfEvent {
  const KnowAboutYourselfRequested();
}

