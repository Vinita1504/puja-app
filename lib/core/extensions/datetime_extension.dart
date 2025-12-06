/// Extension methods for DateTime operations
extension DateTimeExtension on DateTime {
  /// Format time to 12-hour format with AM/PM
  ///
  /// Converts DateTime to string format like "6:32 AM" or "5:09 PM"
  String toFormattedTime() {
    final hour = this.hour;
    final minute = this.minute;
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    return '$displayHour:${minute.toString().padLeft(2, '0')} $period';
  }
}

