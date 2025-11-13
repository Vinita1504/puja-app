import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for managing bottom navigation bar state
///
/// Uses StateProvider to manage the selected tab index.
/// Default value is 0 (Home/Puja tab).
final bottomNavProvider = StateProvider<int>((ref) => 0);
