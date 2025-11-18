import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';

/// Package selection buttons widget
///
/// Displays three horizontal buttons for Basic, Standard, and Premium packages.
class PackageSelectionButtonsWidget extends StatelessWidget {
  final String selectedPackage;
  final Function(String) onPackageSelected;

  const PackageSelectionButtonsWidget({
    super.key,
    required this.selectedPackage,
    required this.onPackageSelected,
  });

  @override
  Widget build(BuildContext context) {
    final packages = ['Basic', 'Standard', 'Premium'];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: packages.map((package) {
          final isSelected = selectedPackage == package;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: isSelected
                  ? ElevatedButton(
                      onPressed: () => onPackageSelected(package),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colorScheme.primary,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r), // More pill-shaped
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        package,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () => onPackageSelected(package),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: context.colorScheme.onSurface,
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: context.colorScheme.outlineVariant.withOpacity(0.5),
                          width: 1.w,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r), // More pill-shaped
                        ),
                      ),
                      child: Text(
                        package,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
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

