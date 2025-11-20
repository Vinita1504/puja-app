part of 'consult_priest_calendar_bloc.dart';

/// Consult priest calendar events
@freezed
class ConsultPriestCalendarEvent with _$ConsultPriestCalendarEvent {
  /// Initialize calendar with current date
  const factory ConsultPriestCalendarEvent.calendarInitialized() =
      CalendarInitialized;

  /// Date selected by user
  const factory ConsultPriestCalendarEvent.dateSelected(DateTime date) =
      DateSelected;

  /// Month changed (navigated to different month)
  const factory ConsultPriestCalendarEvent.monthChanged(DateTime focusedDay) =
      MonthChanged;

  /// Year changed (navigated to different year)
  const factory ConsultPriestCalendarEvent.yearChanged(DateTime focusedDay) =
      YearChanged;
}

