import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Puja tabs widget
///
/// Displays tab bar with Packages, Benefits, Reviews, and FAQs tabs.
/// Supports click navigation to scroll to sections.
class PujaTabsWidget extends StatelessWidget {
  final int activeTabIndex;
  final Function(int) onTabTapped;

  const PujaTabsWidget({
    super.key,
    required this.activeTabIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    final tabs = ['Packages', 'Benefits', 'Reviews', 'FAQs'];

    return Container(
      color: context.colorScheme.surface,
      child: Row(
        children: tabs.asMap().entries.map((entry) {
          final index = entry.key;
          final tabName = entry.value;
          final isActive = activeTabIndex == index;

          return Expanded(
            child: InkWell(
              onTap: () => onTabTapped(index),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isActive
                          ? context.colorScheme.primary
                          : Colors.transparent,
                      width: 2.h,
                    ),
                  ),
                ),
                child: Text(
                  tabName,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                    color: isActive
                        ? context.colorScheme.primary
                        : context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

