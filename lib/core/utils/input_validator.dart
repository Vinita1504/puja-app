/// Input validation utilities
class InputValidator {
  InputValidator._();

  /// Validate email
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  /// Validate password (minimum 6 characters)
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  /// Validate phone number (10 digits)
  static bool isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^[0-9]{10}$');
    return phoneRegex.hasMatch(phone);
  }

  /// Check if string is not empty
  static bool isNotEmpty(String? value) {
    return value != null && value.trim().isNotEmpty;
  }
}
