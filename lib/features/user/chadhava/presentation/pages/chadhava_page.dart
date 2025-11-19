import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../home/presentation/widgets/home_drawer_widget.dart';
import '../bloc/chadhava_list/chadhava_list_bloc.dart';
import '../bloc/chadhava_list/chadhava_list_event.dart';
import '../widgets/chadhava_category_list_widget.dart';
import '../widgets/chadhava_content_widget.dart';
import '../widgets/chadhava_search_bar_widget.dart';

/// Chadhava page for displaying chadhava offerings
///
/// Displays a list of available chadhava offerings with search and filter functionality.
/// Users can browse and book chadhava offerings from this page.
class ChadhavaPage extends StatelessWidget {
  const ChadhavaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChadhavaListBloc()..add(const ChadhavaListEvent.chadhavaListLoaded()),
      child: Scaffold(
        drawer: const HomeDrawerWidget(),
        backgroundColor: context.colorScheme.surface,
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              authenticated: (_) {},
              unauthenticated: () {
                context.go(AppRoutes.login);
              },
              error: (_) {},
            );
          },
          child: CustomScrollView(
            slivers: [
              // SliverAppBar with header only
              SliverAppBar(
                floating: false,
                pinned: true,
                backgroundColor: context.colorScheme.surface,
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  color: context.colorScheme.onSurface,
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // TODO: Implement cart navigation
                    },
                    color: context.colorScheme.onSurface,
                  ),
                ],
                title: Text(
                  'Chadhava',
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                centerTitle: true,
              ),
              // Search bar as persistent header
              SliverPersistentHeader(
                pinned: true,
                delegate: _SearchBarDelegate(
                  child: const ChadhavaSearchBarWidget(),
                ),
              ),
              // Category list as persistent header
              SliverToBoxAdapter(child: ChadhavaCategoryListWidget()),

              // Content widget (now returns Sliver)
              const ChadhavaContentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

/// Delegate for SliverPersistentHeader to display search bar
class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SearchBarDelegate({required this.child});

  @override
  double get minExtent {
    // Search bar height: padding (8*2) + text field height (~48) = ~64
    return 64.0;
  }

  @override
  double get maxExtent {
    return 64.0;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: maxExtent,
      child: Container(color: context.colorScheme.surface, child: child),
    );
  }

  @override
  bool shouldRebuild(_SearchBarDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
