import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/injection_container.dart';
import 'core/routing/app_router.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/auth_event.dart';
import 'features/auth/presentation/bloc/auth_state.dart';

class PujaKaroApp extends StatelessWidget {
  const PujaKaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>()..add(const AuthEvent.checkAuthStatus());
    
    return BlocProvider.value(
      value: authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // Refresh router when auth state changes
          // This ensures redirect logic runs on state changes
          // Use the router instance directly instead of getting it from context
          // since the context might not have GoRouter available yet
          AppRouter.router.refresh();
        },
        child: Builder(
          builder: (context) => MaterialApp.router(
            title: 'PujaKaro',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: AppRouter.router,
          ),
        ),
      ),
    );
  }
}
