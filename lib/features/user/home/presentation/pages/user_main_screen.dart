import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/shared/widgets/bottom_navigation_bar_widget.dart';
import '../providers/bottom_nav_provider.dart';
import 'home_page.dart';

/// Main screen for authenticated users with bottom navigation
///
/// This screen acts as the parent container that manages navigation
/// between different tabs using Riverpod StateProvider.
class UserMainScreen extends ConsumerWidget {
  const UserMainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavProvider);

    return BlocListener<AuthBloc, AuthState>(
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
      child: Scaffold(
        body: _buildPageForIndex(selectedIndex),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }

  Widget _buildPageForIndex(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(child: Text('Temple'));
      case 2:
        return const HomePage();
      case 3:
        return const Center(child: Text('Chadava'));
      case 4:
        return const Center(child: Text('Priest'));
      default:
        return const HomePage();
    }
  }
}
