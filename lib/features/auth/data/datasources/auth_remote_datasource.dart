import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user_model.dart';

/// Remote data source for authentication
/// Follows Interface Segregation Principle - focused interface
abstract class AuthRemoteDataSource {
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? name,
  });

  Future<void> signOut();

  Future<UserModel?> getCurrentUser();

  Stream<UserModel?> get authStateChanges;
}

/// Firebase implementation of AuthRemoteDataSource
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw const ServerException('User not found after sign in');
      }

      return _userCredentialToModel(userCredential);
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Authentication failed', e.code.hashCode);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw const ServerException('User not created');
      }

      // Update display name if provided
      if (name != null && name.isNotEmpty) {
        await userCredential.user?.updateDisplayName(name);
      }

      return _userCredentialToModel(userCredential);
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Registration failed', e.code.hashCode);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      throw ServerException('Sign out failed: ${e.toString()}');
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = firebaseAuth.currentUser;
    if (user == null) return null;
    return _firebaseUserToModel(user);
  }

  @override
  Stream<UserModel?> get authStateChanges {
    return firebaseAuth.authStateChanges().map((user) {
      if (user == null) return null;
      return _firebaseUserToModel(user);
    });
  }

  UserModel _userCredentialToModel(UserCredential credential) {
    final user = credential.user;
    if (user == null) {
      throw const ServerException('User is null');
    }
    return _firebaseUserToModel(user);
  }

  UserModel _firebaseUserToModel(User user) {
    return UserModel(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName,
      photoUrl: user.photoURL,
    );
  }
}

