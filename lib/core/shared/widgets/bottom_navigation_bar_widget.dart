// ignore_for_file: unused_element_parameter

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import '../../../features/user/home/presentation/bloc/bottom_nav/bottom_nav_bloc.dart';

/// Bottom navigation bar widget for main app navigation
///
/// Displays 5 tabs: Puja, Temple, Home, Chadava, and Priest.
/// Uses custom icons from assets/icons folder.
/// Uses BottomNavBloc to manage selected index.
/// Home icon (index 2) is displayed larger with elevated appearance without a label.
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        final selectedIndex = state.selectedIndex;

        return Container(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.primary.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              context
                  .read<BottomNavBloc>()
                  .add(BottomNavEvent.tabIndexChanged(index));
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 12.sp,
            unselectedFontSize: 12.sp,
            items: [
              BottomNavigationBarItem(
                icon: _BottomNavIcon(assetPath: 'assets/icons/puja.png'),
                label: 'Puja',
              ),
              BottomNavigationBarItem(
                icon: _BottomNavIcon(assetPath: 'assets/icons/temple.png'),
                label: 'Temple',
              ),
              BottomNavigationBarItem(
                icon: _HomeIcon(
                  assetPath: 'assets/icons/home.png',
                  isSelected: selectedIndex == 2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _BottomNavIcon(assetPath: 'assets/icons/chadhava.png'),
                label: 'Chadava',
              ),
              BottomNavigationBarItem(
                icon: _BottomNavIcon(assetPath: 'assets/icons/priest.png'),
                label: 'Priest',
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Private widget for bottom navigation bar icons
class _BottomNavIcon extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;

  const _BottomNavIcon({required this.assetPath, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetPath, width: width ?? 28.w, height: height ?? 28.h);
  }
}

/// Private widget for home icon with elevated appearance
class _HomeIcon extends StatelessWidget {
  final String assetPath;
  final bool isSelected;

  const _HomeIcon({required this.assetPath, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.w,
      height: 52.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
            : Colors.transparent,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Image.asset(assetPath, width: 36.w, height: 36.h),
    );
  }
}
