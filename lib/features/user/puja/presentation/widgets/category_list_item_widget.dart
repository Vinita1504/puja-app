import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';

/// Category list item widget
///
/// Displays an individual category item with icon and name.
/// Shows orange border when selected.
class CategoryListItemWidget extends StatelessWidget {
  /// Category data
  final PujaCategoryModel category;

  /// Whether this category is selected
  final bool isSelected;

  /// Callback when item is tapped
  final VoidCallback onTap;

  const CategoryListItemWidget({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colorScheme.surfaceContainerLowest,
              ),
              child: ClipOval(
                child: category.imageUrl != null
                    ? Image.asset(
                        category.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.category,
                            size: 22.sp,
                            color: context.colorScheme.onSurfaceVariant,
                          );
                        },
                      )
                    : Icon(
                        Icons.category,
                        size: 22.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
              ),
            ),
            SizedBox(height: 4.h),
            Flexible(
              child: Text(
                category.name,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 10.sp,
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
  }
}
