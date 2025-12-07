import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../bloc/muhurat_result/muhurat_result_bloc.dart';
import '../../bloc/muhurat_result/muhurat_result_event.dart';
import '../../bloc/muhurat_result/muhurat_result_state.dart';

/// Muhurat tab bar widget
///
/// Displays two tabs: Choghadiya Muhurat and Horo Muhurat
/// with rounded container design.
class MuhuratTabBarWidget extends StatelessWidget {
  const MuhuratTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MuhuratResultBloc, MuhuratResultState>(
      builder: (context, state) {
        if (state is! MuhuratResultLoadedState) {
          return const SizedBox.shrink();
        }

        final selectedTabIndex = state.selectedTabIndex;
        final tabs = ['Choghadiya Muhurat', 'Horo Muhurat'];

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          padding: EdgeInsets.all(4.w),
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
                child: GestureDetector(
                  onTap: () {
                    context.read<MuhuratResultBloc>().add(
                          MuhuratResultTabChanged(tabIndex: index),
                        );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: isActive
                          ? context.colorScheme.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(42.r),
                    ),
                    child: Center(
                      child: Text(
                        tabName,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: isActive
                              ? context.colorScheme.onPrimary
                              : context.colorScheme.onSurfaceVariant,
                        ),
                      ),
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

