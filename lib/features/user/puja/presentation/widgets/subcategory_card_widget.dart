import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/puja_filter/puja_filter_bloc.dart';

/// Subcategory card widget
///
/// Displays a subcategory card with image and name.
/// Shows visual indicator when selected.
class SubcategoryCardWidget extends StatelessWidget {
  /// Subcategory name
  final String name;

  /// Subcategory image path
  final String imagePath;

  const SubcategoryCardWidget({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PujaFilterBloc, PujaFilterState>(
      buildWhen: (previous, current) =>
          previous.selectedSubcategories != current.selectedSubcategories,
      builder: (context, state) {
        final isSelected = state.selectedSubcategories.contains(name);

        return GestureDetector(
          onTap: () {
            context
                .read<PujaFilterBloc>()
                .add(PujaFilterEvent.subcategoryToggled(name));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: isSelected ? Colors.orange : Colors.transparent,
                    width: isSelected ? 2.w : 0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(alpha: 0.1),
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: imagePath.isEmpty
                      ? Container(
                          width: double.infinity,
                          height: 60.h,
                          color: context.colorScheme.surfaceContainerLowest,
                          child: Icon(
                            Icons.image_not_supported,
                            size: 20.sp,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        )
                      : imagePath.startsWith('http://') ||
                              imagePath.startsWith('https://')
                          ? Image.network(
                              imagePath,
                              width: double.infinity,
                              height: 60.h,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: double.infinity,
                                  height: 60.h,
                                  color:
                                      context.colorScheme.surfaceContainerLowest,
                                  child: Icon(
                                    Icons.image_not_supported,
                                    size: 20.sp,
                                    color:
                                        context.colorScheme.onSurfaceVariant,
                                  ),
                                );
                              },
                            )
                          : Image.asset(
                              imagePath,
                              width: double.infinity,
                              height: 60.h,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: double.infinity,
                                  height: 60.h,
                                  color:
                                      context.colorScheme.surfaceContainerLowest,
                                  child: Icon(
                                    Icons.image_not_supported,
                                    size: 20.sp,
                                    color:
                                        context.colorScheme.onSurfaceVariant,
                                  ),
                                );
                              },
                            ),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                name,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 10.sp,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
