import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Puja page header widget
///
/// Displays the header with menu icon, app title, user profile icons,
/// and shopping cart icon.
class PujaPageHeaderWidget extends StatelessWidget {
  /// Callback when menu icon is tapped
  final VoidCallback? onMenuTap;

  /// Callback when cart icon is tapped
  final VoidCallback? onCartTap;

  const PujaPageHeaderWidget({super.key, this.onMenuTap, this.onCartTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: context.colorScheme.onSurface,
              size: 24.sp,
            ),
            onPressed: onMenuTap,
          ),
          SizedBox(width: 8.w),
          Text(
            'Pooja Ko',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 56.w,
            height: 32.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'V',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24.w,
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: context.colorScheme.surface,
                        width: 2.w,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'R',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 12.w),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: context.colorScheme.onSurface,
              size: 24.sp,
            ),
            onPressed: onCartTap,
          ),
        ],
      ),
    );
  }
}
