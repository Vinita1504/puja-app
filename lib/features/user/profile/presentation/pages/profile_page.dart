import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../widgets/profile_content_widget.dart';

/// Profile page
///
/// Displays user profile information including avatar, name, phone number,
/// quick action buttons (My Puja, Chadhava, Language, Help), and menu items
/// (Update Profile, Rate Us, Share App, Settings, Logout).
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.surface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Poojakaro'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // TODO: Navigate to cart
            },
          ),
        ],
      ),
      body: const ProfileContentWidget(),
    );
  }
}
