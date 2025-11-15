import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';

/// Chadhava category item widget
///
/// Displays an individual category item with icon and name.
/// Shows orange border when selected.
class ChadhavaCategoryItemWidget extends StatelessWidget {
  /// Category name
  final String categoryName;

  /// Category icon path (asset or network)
  final String? iconPath;

  /// Whether this category is selected
  final bool isSelected;

  /// Available height for the item (passed from parent LayoutBuilder)
  final double availableHeight;

  /// Callback when item is tapped
  final VoidCallback onTap;

  const ChadhavaCategoryItemWidget({
    super.key,
    required this.categoryName,
    this.iconPath,
    required this.isSelected,
    required this.availableHeight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate responsive sizes based on available height
        // Icon size scales from 24 to 40 based on container height
        final iconSize = (availableHeight * 0.4).clamp(24.0, 40.0);
        final fontSize = (availableHeight * 0.12).clamp(9.0, 12.0);
        final itemWidth = (availableHeight * 0.8).clamp(60.0, 80.0);
        final verticalPadding = (availableHeight * 0.08).clamp(4.0, 8.0);
        final iconSpacing = (availableHeight * 0.04).clamp(2.0, 4.0);

        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: itemWidth,
            margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: verticalPadding,
            ),
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: isSelected
                    ? context.colorScheme.primary
                    : Colors.transparent,
                width: isSelected ? 2.w : 0,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon container
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: iconSize,
                    maxHeight: iconSize,
                  ),
                  child: Container(
                    width: iconSize,
                    height: iconSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colorScheme.surfaceContainerLowest,
                    ),
                    child: ClipOval(
                      child: iconPath != null
                          ? Image.asset(
                              iconPath!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.category,
                                  size: iconSize * 0.55,
                                  color: context.colorScheme.onSurfaceVariant,
                                );
                              },
                            )
                          : Icon(
                              Icons.category,
                              size: iconSize * 0.55,
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                    ),
                  ),
                ),
                SizedBox(height: iconSpacing),
                // Category name text
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: itemWidth - 12.w, // Account for padding
                  ),
                  child: Text(
                    categoryName,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: isSelected
                          ? context.colorScheme.primary
                          : context.colorScheme.onSurface,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: fontSize,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

