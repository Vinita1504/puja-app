import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../widgets/home_content_widget.dart';
import '../widgets/home_drawer_widget.dart';
import '../widgets/home_search_bar_widget.dart';

/// Home page for authenticated users
///
/// Displays the main home screen with a collapsible app bar containing
/// a search bar, drawer navigation, and various content sections including
/// Panchang, Recommended Puja, and other spiritual services.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawerWidget(),
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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: context.colorScheme.surface,
              expandedHeight: 110.h,
              floating: false,
              centerTitle: true,
              pinned: true,
              title: const Text('PoojaKaro'),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              actions: [
                IconButton(
                  icon: Image.asset(
                    'assets/icons/profile.png',
                    width: 20.w,
                    height: 20.h,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.person,
                        size: 20.sp,
                        color: context.colorScheme.onSurface,
                      );
                    },
                  ),
                  onPressed: () => context.push(AppRoutes.profile),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + kToolbarHeight,
                    left: 16.w,
                    right: 16.w,
                    bottom: 16.h,
                  ),
                  child: const HomeSearchBarWidget(),
                ),
              ),
            ),
            HomeContentWidget(userName: "Vinita"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.colorScheme.surface,
        onPressed: () {
          // TODO: Implement WhatsApp action
        },
        child: Image.asset(
          'assets/icons/whatsapp-icon.png',
          width: 24.w,
          height: 24.h,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.chat, size: 24.sp, color: Colors.white);
          },
        ),
      ),
    );
  }
}
