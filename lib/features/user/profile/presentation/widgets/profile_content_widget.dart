import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'profile_header_widget.dart';
import 'quick_action_buttons_widget.dart';
import 'menu_items_widget.dart';

/// Profile content widget
///
/// Displays the main profile content including header, quick actions, and menu items.
class ProfileContentWidget extends StatelessWidget {
  const ProfileContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Profile Header Section
          const ProfileHeaderWidget(),

          // Quick Action Buttons (2x2 Grid)
          const QuickActionButtonsWidget(),
          SizedBox(height: 8.h),

          // Menu Items List
          const MenuItemsWidget(),
        ],
      ),
    );
  }
}
