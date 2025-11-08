import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

/// Sign up use case
/// Follows Single Responsibility Principle
class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
    String? name,
  }) async {
    return await repository.signUpWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );
  }
}

