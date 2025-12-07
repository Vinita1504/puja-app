import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/choghadiya_muhurat.dart';
import 'muhurat_type_badge_widget.dart';

/// Choghadiya card widget
///
/// Displays a single Choghadiya muhurat entry with OM icon, name, time range,
/// badge, and date.
class ChoghadiyaCardWidget extends StatelessWidget {
  /// Choghadiya muhurat data
  final ChoghadiyaMuhurat muhurat;

  const ChoghadiyaCardWidget({
    super.key,
    required this.muhurat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // OM Icon, Title and Badge in one row
          Row(
            children: [
              Image.asset(
                'assets/muhurat/om_sign.png',
                width: 32.w,
                height: 32.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  muhurat.muhurat,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              MuhuratTypeBadgeWidget(type: muhurat.type),
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
                        _formatTime(muhurat.start),
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
                        _formatTime(muhurat.end),
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
          
          // Date with day of week
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
      // If parsing fails, return first part
      final parts = dateTimeString.split(' ');
      if (parts.length >= 4) {
        return '${parts[0]} ${parts[1]} ${parts[2]} ${parts[3]}';
      }
      return dateTimeString;
    }
  }

  String _formatDayOfWeek(DateTime dateTime) {
    return DateFormat('EEEE').format(dateTime);
  }
}

