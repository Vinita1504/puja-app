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
import '../../features/user/home/presentation/bloc/bottom_nav/bottom_nav_bloc.dart';
import '../../features/user/home/presentation/bloc/youtube_player/youtube_player_bloc.dart';
import '../../features/user/puja/presentation/bloc/puja_filter/puja_filter_bloc.dart';
import '../../features/user/know-about-yourself/presentation/bloc/know_about_yourself/know_about_yourself_bloc.dart';
import '../../features/user/panchang/data/datasources/panchang_local_datasource.dart';
import '../../features/user/panchang/data/repositories/panchang_repository_impl.dart';
import '../../features/user/panchang/domain/repositories/panchang_repository.dart';
import '../../features/user/panchang/domain/usecases/get_today_panchang_usecase.dart';
import '../../features/user/panchang/presentation/bloc/panchang_bloc.dart';

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

  // Register Panchang Data Source
  getIt.registerLazySingleton<PanchangLocalDataSource>(
    () => PanchangLocalDataSourceImpl(),
  );

  // Register Panchang Repository
  getIt.registerLazySingleton<PanchangRepository>(
    () => PanchangRepositoryImpl(
      localDataSource: getIt<PanchangLocalDataSource>(),
    ),
  );

  // Register Panchang Use Case
  getIt.registerLazySingleton<GetTodayPanchangUseCase>(
    () => GetTodayPanchangUseCase(getIt<PanchangRepository>()),
  );

  getIt
    ..registerFactory<BottomNavBloc>(() => BottomNavBloc())
    ..registerFactory<PujaFilterBloc>(() => PujaFilterBloc())
    ..registerFactory<KnowAboutYourselfBloc>(
      () => KnowAboutYourselfBloc(),
    )
    ..registerFactory<PanchangBloc>(
      () => PanchangBloc(getTodayPanchangUseCase: getIt<GetTodayPanchangUseCase>()),
    )
    ..registerFactoryParam<YoutubePlayerBloc, String, void>(
      (videoId, _) => YoutubePlayerBloc(videoId: videoId),
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
