import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';
import 'profile_menu_item_widget.dart';
import 'logout_button_widget.dart';

/// Menu items widget
///
/// Displays list of menu items including Update Profile, Rate Us, Share App, Settings, and Logout.
class MenuItemsWidget extends StatelessWidget {
  const MenuItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      color: context.colorScheme.surface,
      child: Column(
        children: [
          ProfileMenuItemWidget(
            iconPath: 'assets/icons/profile.png',
            title: 'Update Profile',
            onTap: () {
              context.push(AppRoutes.editProfile);
            },
          ),
          ProfileMenuItemWidget(
            iconPath: 'assets/icons/rate-us.png',
            title: 'Rate Us',
            onTap: () {
              // TODO: Open app store rating
            },
          ),
          ProfileMenuItemWidget(
            iconPath: 'assets/icons/share.png',
            title: 'Share App',
            onTap: () {
              // TODO: Share app
            },
          ),
          ProfileMenuItemWidget(
            iconPath: 'assets/icons/settings.png',
            title: 'Settings',
            onTap: () {
              // TODO: Navigate to settings
            },
          ),
          // Logout button (special styling)
          const LogoutButtonWidget(),
        ],
      ),
    );
  }
}
