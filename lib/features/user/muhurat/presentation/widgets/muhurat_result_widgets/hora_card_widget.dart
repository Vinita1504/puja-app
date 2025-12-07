import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:expandable_text/expandable_text.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/hora_muhurat.dart';

/// Hora card widget
///
/// Displays a single Hora muhurat entry with OM icon, planet name, time range,
/// benefits, and lucky gem.
class HoraCardWidget extends StatelessWidget {
  /// Hora muhurat data
  final HoraMuhurat hora;

  const HoraCardWidget({
    super.key,
    required this.hora,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // OM Icon and Title in one row
          Text(
            hora.hora,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          
          // Day of week and date
          Row(
            children: [
              Text(
                _formatDayOfWeek(DateTime.now()),
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                '•',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                _formatDate(DateTime.now().toString()),
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          
          // Start and End times in columns side by side
          Row(
            children: [
              // Start time column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16.sp,
                          color: context.colorScheme.error,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          'Start',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text(
                        _formatTime(hora.start),
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.w),
              // End time column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16.sp,
                          color: context.colorScheme.error,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          'End',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Text(
                        _formatTime(hora.end),
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          
          // Benefits text
          ExpandableText(
            hora.benefits,
            expandText: 'read more',
            collapseText: 'read less',
            maxLines: 3,
            linkColor: context.colorScheme.primary,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            linkStyle: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          
          // Lucky gem badge
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.diamond,
                  size: 12.sp,
                  color: context.colorScheme.primary,
                ),
                SizedBox(width: 4.w),
                Text(
                  hora.luckyGem,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(String dateTimeString) {
    try {
      final dateTime = DateTime.parse(dateTimeString);
      final hour = dateTime.hour;
      final minute = dateTime.minute;
      final period = hour >= 12 ? 'PM' : 'AM';
      final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
      return '$displayHour:${minute.toString().padLeft(2, '0')} $period';
    } catch (e) {
      // If parsing fails, try to extract time from the string
      final parts = dateTimeString.split(' ');
      if (parts.length >= 3) {
        return '${parts[parts.length - 2]} ${parts[parts.length - 1]}';
      }
      return dateTimeString;
    }
  }

  String _formatDate(String dateTimeString) {
    try {
      final dateTime = DateTime.parse(dateTimeString);
      return DateFormat('MMM dd, yyyy').format(dateTime);
    } catch (e) {
      return dateTimeString;
    }
  }

  String _formatDayOfWeek(DateTime dateTime) {
    return DateFormat('EEEE').format(dateTime);
  }
}

