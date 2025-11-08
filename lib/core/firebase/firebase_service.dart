import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Abstract Firebase service interface
abstract class FirebaseService {
  /// Get Firebase Auth instance
  FirebaseAuth get auth;

  /// Get Firestore instance
  FirebaseFirestore get firestore;

  /// Get current user
  User? get currentUser;

  /// Check if user is authenticated
  bool get isAuthenticated;
}

/// Firebase service implementation
class FirebaseServiceImpl implements FirebaseService {
  @override
  FirebaseAuth get auth => FirebaseAuth.instance;

  @override
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @override
  User? get currentUser => auth.currentUser;

  @override
  bool get isAuthenticated => currentUser != null;
}

