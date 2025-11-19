/// Centralized route path constants
/// All route paths should be defined here for consistency
class AppRoutes {
  AppRoutes._();

  // Authentication routes
  static const String login = '/login';
  static const String signUp = '/signup';

  // Main app routes
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';
  static const String chadhavaDetails = '/chadhavaDetails';
  static const String pujaDetails = '/pujaDetails/:id';
  static const String pujaCart = '/pujaCart/:pujaId/:packageId';

  // Root route
  static const String root = '/';
}
