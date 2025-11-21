part of 'consult_priest_calendar_bloc.dart';

/// Consult priest calendar state
@freezed
class ConsultPriestCalendarState with _$ConsultPriestCalendarState {
  /// Initial state with current date
  const factory ConsultPriestCalendarState({
    required DateTime focusedDay,
    DateTime? selectedDay,
  }) = _ConsultPriestCalendarState;

  /// Factory for initial state
  factory ConsultPriestCalendarState.initial() {
    final now = DateTime.now();
    return ConsultPriestCalendarState(
      focusedDay: DateTime(now.year, now.month),
      selectedDay: null,
    );
  }
}
