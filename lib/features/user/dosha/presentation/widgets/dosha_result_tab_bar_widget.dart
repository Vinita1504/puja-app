import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/dosha_result/dosha_result_bloc.dart';
import '../bloc/dosha_result/dosha_result_event.dart';
import '../bloc/dosha_result/dosha_result_state.dart';

/// Dosha result tab bar widget
///
/// Displays premium tab bar with "Mangal" and "Shankhpal" tabs.
/// Features CircleAvatar icons and rounded container with selected tab background.
class DoshaResultTabBarWidget extends StatelessWidget {
  const DoshaResultTabBarWidget({super.key});

  /// Map tab index to icon asset path
  String _getTabIconPath(int index) {
    switch (index) {
      case 0:
        return 'assets/icons/mangal-dosha-icon.png';
      case 1:
        return 'assets/icons/kaal-sarp-icon.png';
      default:
        return 'assets/icons/mangal-dosha-icon.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoshaResultBloc, DoshaResultState>(
      builder: (context, state) {
        if (state is! DoshaResultLoadedState) {
          return const SizedBox.shrink();
        }

        final selectedTabIndex = state.selectedTabIndex;
        final tabs = ['Mangal', 'Kaal Sarp'];

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(42.r),
            
          ),
          child: Row(
            children: tabs.asMap().entries.map((entry) {
              final index = entry.key;
              final tabName = entry.value;
              final isActive = selectedTabIndex == index;

              return Expanded(
                child: InkWell(
                  onTap: () {
                    context.read<DoshaResultBloc>().add(
                          DoshaTabChanged(tabIndex: index),
                        );
                  },
                  borderRadius: BorderRadius.circular(42.r),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: isActive
                          ? context.colorScheme.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(42.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 16.r,
                          backgroundColor: isActive
                              ? context.colorScheme.onPrimary.withValues(alpha: 0.2)
                              : context.colorScheme.surfaceContainerLowest,
                          backgroundImage: AssetImage(_getTabIconPath(index)),
                          onBackgroundImageError: (exception, stackTrace) {
                            // Error handled by child fallback
                          },
                          child: Icon(
                            index == 0 ? Icons.stars : Icons.auto_awesome,
                            size: 20.sp,
                            color: isActive
                                ? context.colorScheme.onPrimary
                                : context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          tabName,
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                            color: isActive
                                ? context.colorScheme.onPrimary
                                : context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

