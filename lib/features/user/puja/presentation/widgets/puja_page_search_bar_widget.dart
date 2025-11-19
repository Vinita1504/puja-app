import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../home/presentation/widgets/home_search_bar_widget.dart';

/// Puja page search bar widget
///
/// Displays a filter icon and search bar for searching puja services.
/// Reuses HomeSearchBarWidget for the search functionality.
class PujaPageSearchBarWidget extends StatelessWidget {
  /// Callback when filter icon is tapped
  final VoidCallback? onFilterTap;

  const PujaPageSearchBarWidget({super.key, this.onFilterTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          IconButton(
            icon: ImageIcon(
              AssetImage('assets/icons/filter-icon.png'),
              color: context.colorScheme.onSurface,
              size: 24.sp,
            ),
            onPressed: onFilterTap,
          ),
          SizedBox(width: 8.w),
          Expanded(child: const HomeSearchBarWidget()),
        ],
      ),
    );
  }
}
