import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/injection_container.dart';
import 'app.dart';
// TODO: Re-enable Firebase when ready to implement authentication
// import 'package:firebase_core/firebase_core.dart';
// import 'core/firebase/firebase_options.dart' show DefaultFirebaseOptions;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Initialize Firebase when ready to implement authentication
  // Initialize Firebase
  // Note: Run 'flutterfire configure' to generate proper firebase_options.dart
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

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => const PujaKaroApp(),
    ),
  );
}
