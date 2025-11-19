import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/user/chadhava/presentation/bloc/chadhava_details/chadhava_details_event.dart';
import '../../features/user/profile/presentation/bloc/edit_profile/edit_profile_event.dart';
import '../di/injection_container.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/user/home/presentation/bloc/bottom_nav/bottom_nav_bloc.dart';
import '../../features/user/home/presentation/pages/user_main_screen.dart';
import '../../features/user/chadhava/presentation/pages/chadhava_details_page.dart';
import '../../features/user/chadhava/presentation/bloc/chadhava_details/chadhava_details_bloc.dart';
import '../../features/user/puja/presentation/pages/puja_details_page.dart';
import '../../features/user/puja/presentation/bloc/puja_details/puja_details_bloc.dart';
import '../../features/user/puja/presentation/bloc/puja_details/puja_details_event.dart';
import '../../features/user/puja_cart/presentation/pages/puja_cart_page.dart';
import '../../features/user/puja_cart/presentation/bloc/puja_cart_bloc.dart';
import '../../features/user/puja_cart/presentation/bloc/puja_cart_event.dart';
import '../../features/user/profile/presentation/pages/profile_page.dart';
import '../../features/user/profile/presentation/pages/edit_profile_page.dart';
import '../../features/user/profile/presentation/bloc/edit_profile/edit_profile_bloc.dart';
import 'app_routes.dart';

/// Application router configuration
/// Handles navigation and authentication-based route guards
class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter? _router;

  static GoRouter get router {
    _router ??= GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: AppRoutes.login,
      debugLogDiagnostics: true,
      redirect: (BuildContext context, GoRouterState state) {
        try {
          //   // Get AuthBloc from context
          //   final authBloc = context.read<AuthBloc>();
          //   final authState = authBloc.state;

          //   final isAuthenticated = authState.maybeWhen(
          //     authenticated: (_) => true,
          //     orElse: () => false,
          //   );

          //   final isGoingToLogin = state.matchedLocation == AppRoutes.login ||
          //       state.matchedLocation == AppRoutes.root;

          //   // If authenticated and trying to go to login, redirect to home
          //   if (isAuthenticated && isGoingToLogin) {
          //     return AppRoutes.home;
          //   }

          //   // If not authenticated and trying to access protected routes, redirect to login
          //   if (!isAuthenticated && !isGoingToLogin) {
          //     return AppRoutes.login;
          //   }
        } catch (e) {
          // If AuthBloc is not available in context, redirect to login
          // return AppRoutes.login;
          return null;
        }

        // No redirect needed
        return null;
      },
      routes: [
        GoRoute(path: AppRoutes.root, redirect: (_, __) => AppRoutes.login),
        GoRoute(
          path: AppRoutes.login,
          name: 'login',
          builder: (context, state) => BlocProvider.value(
            value: getIt<AuthBloc>(),
            child: const LoginPage(),
          ),
        ),
        GoRoute(
          path: AppRoutes.signUp,
          name: 'signup',
          builder: (context, state) => BlocProvider.value(
            value: getIt<AuthBloc>(),
            child: const SignUpPage(),
          ),
        ),
        GoRoute(
          path: AppRoutes.home,
          name: 'home',
          builder: (context, state) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: getIt<AuthBloc>()),
              BlocProvider(create: (_) => getIt<BottomNavBloc>()),
            ],
            child: const UserMainScreen(),
          ),
        ),
        GoRoute(
          path: AppRoutes.chadhavaDetails,
          name: 'chadhavaDetails',
          builder: (context, state) {
            final chadhavaId = state.pathParameters['id'] ?? '';
            return BlocProvider(
              create: (context) => ChadhavaDetailsBloc()
                ..add(
                  ChadhavaDetailsEvent.chadhavaDetailsLoaded(
                    chadhavaId: chadhavaId,
                  ),
                ),
              child: ChadhavaDetailsPage(chadhavaId: chadhavaId),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.pujaDetails,
          name: 'pujaDetails',
          builder: (context, state) {
            final pujaId = state.pathParameters['id'] ?? '';
            return BlocProvider(
              create: (context) =>
                  PujaDetailsBloc()
                    ..add(PujaDetailsEvent.pujaDetailsLoaded(pujaId: pujaId)),
              child: PujaDetailsPage(pujaId: pujaId),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.pujaCart,
          name: 'pujaCart',
          builder: (context, state) {
            final pujaId = state.pathParameters['pujaId'] ?? '';
            final packageId = state.pathParameters['packageId'] ?? '';
            return BlocProvider(
              create: (context) => PujaCartBloc()
                ..add(
                  PujaCartEvent.cartLoaded(
                    pujaId: pujaId,
                    packageId: packageId,
                  ),
                ),
              child: PujaCartPage(
                pujaId: pujaId,
                packageId: packageId,
              ),
            );
          },
        ),
        GoRoute(
          path: AppRoutes.profile,
          name: 'profile',
          builder: (context, state) => BlocProvider.value(
            value: getIt<AuthBloc>(),
            child: const ProfilePage(),
          ),
        ),
        GoRoute(
          path: AppRoutes.editProfile,
          name: 'editProfile',
          builder: (context, state) => BlocProvider(
            create: (context) =>
                EditProfileBloc()..add(const EditProfileEvent.profileLoaded()),
            child: const EditProfilePage(),
          ),
        ),
      ],
    );
    return _router!;
  }

  /// Refresh router when auth state changes
  /// Call this from BlocListener when auth state changes
  static void refreshRouter(BuildContext context) {
    GoRouter.of(context).refresh();
  }
}
