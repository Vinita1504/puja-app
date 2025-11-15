import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../home/presentation/widgets/home_drawer_widget.dart';
import '../widgets/chadhava_category_list_widget.dart';
import '../widgets/chadhava_content_widget.dart';
import '../widgets/chadhava_header_widget.dart';
import '../widgets/chadhava_search_bar_widget.dart';

/// Chadhava page for displaying chadhava offerings
///
/// Displays a list of available chadhava offerings with search and filter functionality.
/// Users can browse and book chadhava offerings from this page.
class ChadhavaPage extends ConsumerWidget {
  const ChadhavaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
        child: Column(
          children: [
            ChadhavaHeaderWidget(
              onMenuTap: () {
                Scaffold.of(context).openDrawer();
              },
              onCartTap: () {
                // TODO: Implement cart navigation
              },
            ),
            const ChadhavaSearchBarWidget(),
            const ChadhavaCategoryListWidget(),
            const Expanded(
              child: ChadhavaContentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

