import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/consult_priest_calendar/consult_priest_calendar_bloc.dart';

/// Consult priest calendar widget
///
/// Displays a calendar with month/year selector, navigation arrows,
/// and a date grid with selected date highlighting.
/// Uses table_calendar plugin and BLoC for state management.
class ConsultPriestCalendarWidget extends StatelessWidget {
  const ConsultPriestCalendarWidget({super.key});

  Future<void> _showYearPicker(
    BuildContext context,
    DateTime currentDate,
    DateTime firstDay,
    DateTime lastDay,
  ) async {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    final selectedYear = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Select Year',
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface,
          ),
        ),
        content: SizedBox(
          width: double.maxFinite,
          height: 300.h,
          child: YearPicker(
            firstDate: firstDay,
            lastDate: lastDay,
            selectedDate: currentDate,
            currentDate: DateTime.now(),
            onChanged: (date) {
              Navigator.of(context).pop(date.year);
            },
          ),
        ),
      ),
    );

    if (selectedYear != null) {
      final today = DateTime.now();
      final firstDay = DateTime(today.year, today.month, today.day);
      final newFocusedDay = DateTime(selectedYear, currentDate.month);
      
      // If selected year/month is before today, use today's month
      final finalFocusedDay = newFocusedDay.isBefore(firstDay)
          ? DateTime(selectedYear, today.month)
          : newFocusedDay;
      
      // Ensure it's still >= firstDay
      final clampedFocusedDay = finalFocusedDay.isBefore(firstDay)
          ? firstDay
          : finalFocusedDay;
      
      context.read<ConsultPriestCalendarBloc>().add(
            ConsultPriestCalendarEvent.yearChanged(clampedFocusedDay),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return BlocBuilder<ConsultPriestCalendarBloc, ConsultPriestCalendarState>(
      builder: (context, state) {
        final today = DateTime.now();
        final firstDay = DateTime(today.year, today.month, today.day);
        final lastDay = DateTime.utc(2030, 12, 31);

        // Ensure focusedDay is always >= firstDay
        final focusedDay = state.focusedDay.isBefore(firstDay)
            ? firstDay
            : state.focusedDay;

        // Check if we're at the first month (can't go back)
        final isAtFirstMonth = focusedDay.year == firstDay.year &&
            focusedDay.month == firstDay.month;

        return Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.w,
            ),
          ),
          child: Column(
            children: [
              // Custom header with tappable year/month
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.chevron_left,
                      color: isAtFirstMonth
                          ? colorScheme.onSurface.withValues(alpha: 0.3)
                          : colorScheme.onSurface,
                      size: 24.sp,
                    ),
                    onPressed: isAtFirstMonth
                        ? null
                        : () {
                            final previousMonth = DateTime(
                              focusedDay.year,
                              focusedDay.month - 1,
                            );
                            // Ensure previous month is not before firstDay
                            final clampedMonth = previousMonth.isBefore(firstDay)
                                ? firstDay
                                : previousMonth;
                            context.read<ConsultPriestCalendarBloc>().add(
                                  ConsultPriestCalendarEvent.monthChanged(
                                    clampedMonth,
                                  ),
                                );
                          },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  GestureDetector(
                    onTap: () => _showYearPicker(
                      context,
                      focusedDay,
                      firstDay,
                      lastDay,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          DateFormat('MMMM yyyy').format(focusedDay),
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(
                          Icons.arrow_drop_down,
                          color: colorScheme.onSurface,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: colorScheme.onSurface,
                      size: 24.sp,
                    ),
                    onPressed: () {
                      final nextMonth = DateTime(
                        focusedDay.year,
                        focusedDay.month + 1,
                      );
                      context.read<ConsultPriestCalendarBloc>().add(
                            ConsultPriestCalendarEvent.monthChanged(nextMonth),
                          );
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              // Calendar
              TableCalendar(
                firstDay: firstDay,
                lastDay: lastDay,
                focusedDay: focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(state.selectedDay, day);
                },
                enabledDayPredicate: (day) {
                  // Disable past dates - only allow today and future dates
                  return !day.isBefore(firstDay);
                },
                calendarFormat: CalendarFormat.month,
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: false,
                  titleTextStyle: const TextStyle(fontSize: 0),
                  leftChevronVisible: false,
                  rightChevronVisible: false,
                  headerPadding: EdgeInsets.zero,
                ),
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: true,
                  weekendTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.onSurface,
                  ),
                  defaultTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.onSurface,
                  ),
                  disabledTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.3),
                  ),
                  disabledDecoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                  todayTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                  outsideTextStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  weekendStyle: (textTheme.bodySmall ?? const TextStyle()).copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  context.read<ConsultPriestCalendarBloc>().add(
                        ConsultPriestCalendarEvent.dateSelected(selectedDay),
                      );
                },
                onPageChanged: (focusedDay) {
                  context.read<ConsultPriestCalendarBloc>().add(
                        ConsultPriestCalendarEvent.monthChanged(focusedDay),
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
