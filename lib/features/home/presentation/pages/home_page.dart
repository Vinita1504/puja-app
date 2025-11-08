import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_event.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../../../../core/routing/app_routes.dart';

/// Home page for authenticated users
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PujaKaro'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signOutRequested());
            },
            tooltip: 'Sign Out',
          ),
        ],
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            authenticated: (_) {},
            unauthenticated: () {
              // Navigate to login when signed out
              context.go(AppRoutes.login);
            },
            error: (_) {},
          );
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              authenticated: (user) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 64,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Welcome to PujaKaro!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Logged in as: ${user.email}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    if (user.name != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Name: ${user.name}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                    const SizedBox(height: 32),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent.signOutRequested(),
                            );
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text('Sign Out'),
                    ),
                  ],
                ),
              ),
              unauthenticated: () => const Center(
                child: Text('Not authenticated'),
              ),
              error: (message) => Center(
                child: Text('Error: $message'),
              ),
            );
          },
        ),
      ),
    );
  }
}

