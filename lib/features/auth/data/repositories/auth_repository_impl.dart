import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/failure_mapper.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

/// Authentication repository implementation (Data layer)
/// Follows Liskov Substitution Principle - implements interface correctly
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userModel = await remoteDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userModel.toEntity());
    } on AppException catch (e) {
      return Left(FailureMapper.mapExceptionToFailure(e));
    } catch (e) {
      return Left(
        Failure.unknown(message: 'Unexpected error: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      final userModel = await remoteDataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );
      return Right(userModel.toEntity());
    } on AppException catch (e) {
      return Left(FailureMapper.mapExceptionToFailure(e));
    } catch (e) {
      return Left(
        Failure.unknown(message: 'Unexpected error: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await remoteDataSource.signOut();
      return const Right(null);
    } on AppException catch (e) {
      return Left(FailureMapper.mapExceptionToFailure(e));
    } catch (e) {
      return Left(
        Failure.unknown(message: 'Unexpected error: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getCurrentUser() async {
    try {
      final userModel = await remoteDataSource.getCurrentUser();
      return Right(userModel?.toEntity());
    } on AppException catch (e) {
      return Left(FailureMapper.mapExceptionToFailure(e));
    } catch (e) {
      return Left(
        Failure.unknown(message: 'Unexpected error: ${e.toString()}'),
      );
    }
  }

  @override
  Stream<UserEntity?> get authStateChanges {
    return remoteDataSource.authStateChanges.map(
      (userModel) => userModel?.toEntity(),
    );
  }
}

