import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'quick_action_button_widget.dart';

/// Quick action buttons widget
///
/// Displays a 2x2 grid of quick action buttons (My Puja, Chadhava, Language, Help).
class QuickActionButtonsWidget extends StatelessWidget {
  const QuickActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          // First Row
          Row(
            children: [
              Expanded(
                child: QuickActionButtonWidget(
                  iconPath: 'assets/icons/my-puja.png',
                  title: 'My Puja',
                  onTap: () {
                    // TODO: Navigate to My Puja
                  },
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: QuickActionButtonWidget(
                  iconPath: 'assets/icons/my-puja.png',
                  title: 'Chadhava',
                  onTap: () {
                    // TODO: Navigate to Chadhava
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // Second Row
          Row(
            children: [
              Expanded(
                child: QuickActionButtonWidget(
                  iconPath: 'assets/icons/language.png',
                  title: 'Language',
                  onTap: () {
                    // TODO: Navigate to Language settings
                  },
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: QuickActionButtonWidget(
                  iconPath: 'assets/icons/help.png',
                  title: 'Help',
                  onTap: () {
                    // TODO: Navigate to Help
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
