import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Chadhava header widget
///
/// Displays the header with hamburger menu, title, and cart icon.
/// Uses AppBar-like styling with centered title.
class ChadhavaHeaderWidget extends StatelessWidget {
  /// Callback when menu icon is tapped
  final VoidCallback? onMenuTap;

  /// Callback when cart icon is tapped
  final VoidCallback? onCartTap;

  const ChadhavaHeaderWidget({super.key, this.onMenuTap, this.onCartTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(color: context.colorScheme.surface),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onMenuTap,
            color: context.colorScheme.onSurface,
          ),
          Text(
            'Chadhava',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: onCartTap,
            color: context.colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}
