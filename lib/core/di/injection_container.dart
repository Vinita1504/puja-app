// TODO: Re-enable when ready to implement authentication
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';
import '../network/network_client.dart';
import '../constants/app_constants.dart';
import '../error/failures.dart';
import 'injection_container.config.dart';

// Features
// TODO: Re-enable when ready to implement authentication
// import '../../features/auth/data/datasources/auth_remote_datasource.dart';
// import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/sign_in_usecase.dart';
import '../../features/auth/domain/usecases/sign_up_usecase.dart';
import '../../features/auth/domain/usecases/sign_out_usecase.dart';
import '../../features/auth/domain/entities/user.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

/// Initialize dependency injection
@InjectableInit()
Future<void> configureDependencies() async {
  // Register SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Register NetworkClient
  getIt.registerLazySingleton<NetworkClient>(
    () => NetworkClient(
      baseUrl: AppConstants.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // TODO: Re-enable Firebase Auth when ready to implement authentication
  // Register Firebase Auth
  // getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // TODO: Re-enable Auth Data Sources when ready to implement authentication
  // Register Auth Data Sources
  // getIt.registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(
  //     firebaseAuth: getIt<FirebaseAuth>(),
  //   ),
  // );

  // TODO: Re-enable Auth Repository when ready to implement authentication
  // Register Auth Repository
  // getIt.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     remoteDataSource: getIt<AuthRemoteDataSource>(),
  //   ),
  // );

  // TODO: Re-enable Auth Use Cases when ready to implement authentication
  // Register Auth Use Cases
  // getIt.registerLazySingleton<SignInUseCase>(
  //   () => SignInUseCase(getIt<AuthRepository>()),
  // );
  // getIt.registerLazySingleton<SignUpUseCase>(
  //   () => SignUpUseCase(getIt<AuthRepository>()),
  // );
  // getIt.registerLazySingleton<SignOutUseCase>(
  //   () => SignOutUseCase(getIt<AuthRepository>()),
  // );

  // Register Auth BLoC with stub implementations
  // For now, create a stub AuthBloc that doesn't require Firebase
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      signInUseCase: _createStubSignInUseCase(),
      signUpUseCase: _createStubSignUpUseCase(),
      signOutUseCase: _createStubSignOutUseCase(),
    ),
  );

  // Initialize injectable generated code
  getIt.init();
}

/// Stub implementations for auth use cases when Firebase is not configured
/// TODO: Remove these when Firebase authentication is implemented

SignInUseCase _createStubSignInUseCase() {
  return SignInUseCase(_StubAuthRepository());
}

SignUpUseCase _createStubSignUpUseCase() {
  return SignUpUseCase(_StubAuthRepository());
}

SignOutUseCase _createStubSignOutUseCase() {
  return SignOutUseCase(_StubAuthRepository());
}

/// Stub repository that returns errors indicating Firebase is not configured
class _StubAuthRepository implements AuthRepository {
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return Left(
      Failure.server(
        message:
            'Firebase authentication is not configured. Please configure Firebase to enable authentication.',
      ),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? name,
  }) async {
    return Left(
      Failure.server(
        message:
            'Firebase authentication is not configured. Please configure Firebase to enable authentication.',
      ),
    );
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    return Left(
      Failure.server(
        message:
            'Firebase authentication is not configured. Please configure Firebase to enable authentication.',
      ),
    );
  }

  @override
  Future<Either<Failure, UserEntity?>> getCurrentUser() async {
    return const Right(null);
  }

  @override
  Stream<UserEntity?> get authStateChanges {
    return Stream.value(null);
  }
}
