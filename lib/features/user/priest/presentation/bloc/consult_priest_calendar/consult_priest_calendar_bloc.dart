import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consult_priest_calendar_event.dart';
part 'consult_priest_calendar_state.dart';
part 'consult_priest_calendar_bloc.freezed.dart';

/// Consult priest calendar BLoC
///
/// Manages calendar state including focused month/year and selected date.
class ConsultPriestCalendarBloc
    extends Bloc<ConsultPriestCalendarEvent, ConsultPriestCalendarState> {
  ConsultPriestCalendarBloc()
      : super(ConsultPriestCalendarState.initial()) {
    on<CalendarInitialized>(_onCalendarInitialized);
    on<DateSelected>(_onDateSelected);
    on<MonthChanged>(_onMonthChanged);
    on<YearChanged>(_onYearChanged);
  }

  void _onCalendarInitialized(
    CalendarInitialized event,
    Emitter<ConsultPriestCalendarState> emit,
  ) {
    emit(ConsultPriestCalendarState.initial());
  }

  void _onDateSelected(
    DateSelected event,
    Emitter<ConsultPriestCalendarState> emit,
  ) {
    emit(
      state.copyWith(
        selectedDay: event.date,
        focusedDay: DateTime(event.date.year, event.date.month),
      ),
    );
  }

  void _onMonthChanged(
    MonthChanged event,
    Emitter<ConsultPriestCalendarState> emit,
  ) {
    final today = DateTime.now();
    final firstDay = DateTime(today.year, today.month, today.day);
    final newFocusedDay = DateTime(event.focusedDay.year, event.focusedDay.month);
    
    // Ensure focusedDay is always >= firstDay
    final clampedFocusedDay = newFocusedDay.isBefore(firstDay)
        ? firstDay
        : newFocusedDay;
    
    emit(
      state.copyWith(
        focusedDay: clampedFocusedDay,
      ),
    );
  }

  void _onYearChanged(
    YearChanged event,
    Emitter<ConsultPriestCalendarState> emit,
  ) {
    final today = DateTime.now();
    final firstDay = DateTime(today.year, today.month, today.day);
    final newFocusedDay = DateTime(event.focusedDay.year, event.focusedDay.month);
    
    // Ensure focusedDay is always >= firstDay
    final clampedFocusedDay = newFocusedDay.isBefore(firstDay)
        ? firstDay
        : newFocusedDay;
    
    emit(
      state.copyWith(
        focusedDay: clampedFocusedDay,
      ),
    );
  }
}

