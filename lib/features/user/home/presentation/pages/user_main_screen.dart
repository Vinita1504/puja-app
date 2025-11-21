import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/shared/widgets/bottom_navigation_bar_widget.dart';
import '../bloc/bottom_nav/bottom_nav_bloc.dart';
import 'home_page_v2.dart';
import '../../../puja/presentation/pages/puja_page.dart';
import '../../../chadhava/presentation/pages/chadhava_page.dart';
import '../../../priest/presentation/pages/consult_priest_page.dart';
import '../../../priest/presentation/bloc/consult_priest_calendar/consult_priest_calendar_bloc.dart';

/// Main screen for authenticated users with bottom navigation
///
/// This screen acts as the parent container that manages navigation
/// between different tabs using BLoC state.
class UserMainScreen extends StatelessWidget {
  const UserMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      child: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          return Scaffold(
            body: _buildPageForIndex(state.selectedIndex),
            bottomNavigationBar: const BottomNavigationBarWidget(),
          );
        },
      ),
    );
  }

  Widget _buildPageForIndex(int index) {
    switch (index) {
      case 0:
        return const PujaPage();
      case 1:
        return const Center(child: Text('Temple'));
      case 2:
        return const HomePageV2();
      case 3:
        return const ChadhavaPage();
      case 4:
        return BlocProvider(
          create: (_) => ConsultPriestCalendarBloc(),
          child: const ConsultPriestPage(),
        );
      default:
        return const HomePageV2();
    }
  }
}
