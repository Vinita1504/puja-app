/// Extension methods for String operations
extension StringExtension on String {
  /// Remove seconds from time format
  ///
  /// Converts time strings like "6:32:58 AM" to "6:32 AM"
  /// or "5:09:45 PM" to "5:09 PM"
  String removeSecondsFromTime() {
    return replaceAll(RegExp(r':\d{2}(?=\s*[AP]M)'), '');
  }
}

