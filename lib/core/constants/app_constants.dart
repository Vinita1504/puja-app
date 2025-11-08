/// Application-wide constants
class AppConstants {
  AppConstants._();

  // API Configuration
  static const String baseUrl = 'https://api.example.com';

  // Firebase Collections
  static const String usersCollection = 'users';

  // SharedPreferences Keys
  static const String keyUserId = 'user_id';
  static const String keyUserToken = 'user_token';
  static const String keyIsLoggedIn = 'is_logged_in';

  // Timeouts
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;
}

