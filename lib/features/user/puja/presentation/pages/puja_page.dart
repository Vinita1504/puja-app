import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../auth/presentation/bloc/auth_state.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../home/presentation/widgets/home_drawer_widget.dart';
import '../../data/models/puja_category_model.dart';
import '../widgets/puja_page_content_widget.dart';
import '../widgets/puja_page_search_bar_widget.dart';
import '../widgets/puja_filter_bottom_sheet_widget.dart';

/// Puja page for displaying puja services
///
/// Displays a list of available puja services with search and filter functionality.
/// Users can browse and book puja services from this page.
class PujaPage extends StatelessWidget {
  const PujaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart with default values
              // TODO: Replace with actual cart state management when available
              context.push('/pujaCart/default/default');
            },
          ),
        ],
        title: const Text('PoojaKaro'),
        backgroundColor: context.colorScheme.surface,
      ),
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
            // PujaPageHeaderWidget(
            //   onMenuTap: () {
            //     Scaffold.of(context).openDrawer();
            //   },
            //   onCartTap: () {
            //     // TODO: Implement cart navigation
            //   },
            // ),
            PujaPageSearchBarWidget(
              onFilterTap: () => _showFilterBottomSheet(context),
            ),
            Expanded(child: const PujaPageContentWidget()),
          ],
        ),
      ),
    );
  }

  /// Shows the filter bottom sheet
  void _showFilterBottomSheet(BuildContext context) {
    // Using mock data for now - replace with repository/provider when API is ready
    final categories = PujaCategoryModel.mockCategories;

    PujaFilterBottomSheetWidget.show(context, categories: categories).then((
      selectedSubcategories,
    ) {
      if (selectedSubcategories != null && selectedSubcategories.isNotEmpty) {
        // TODO: Apply filters to puja list
        // You can store the selected subcategories in state or use them to filter
      }
    });
  }
}
