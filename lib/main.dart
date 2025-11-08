import 'package:flutter/material.dart';
import 'core/di/injection_container.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // // Initialize Firebase
  // // Note: Run 'flutterfire configure' to generate proper firebase_options.dart
  // try {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // } catch (e) {
  //   // If firebase_options is not configured, continue without Firebase
  //   // Run 'flutterfire configure' to set up Firebase
  //   debugPrint('Firebase initialization error: $e');
  // }

  // Initialize dependency injection
  await configureDependencies();

  runApp(const PujaKaroApp());
}
