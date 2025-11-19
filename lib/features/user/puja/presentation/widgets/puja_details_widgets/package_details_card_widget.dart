import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/puja_package.dart';

/// Package details card widget
///
/// Displays package details with price, inclusions list, and Book Now button.
class PackageDetailsCardWidget extends StatelessWidget {
  final PujaPackageEntity package;
  final VoidCallback? onBookNowPressed;

  const PackageDetailsCardWidget({
    super.key,
    required this.package,
    this.onBookNowPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 46.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: context.colorScheme.primary.withValues(alpha: 0.3),
          width: 1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Price
            Center(
              child: Text(
                '₹1000',
                style: context.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade900,
                  fontSize: 28.sp,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            // Inclusions list
            if (package.benefits.isNotEmpty)
              ...package.benefits.map((inclusion) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/tick-icon.png'),
                        color: context.colorScheme.primary,
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          inclusion,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colorScheme.onSurface,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            SizedBox(height: 16.h),
            // Book Now button with gradient
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.primary,
                      context.colorScheme.primary.withValues(alpha: 0.8),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: ElevatedButton(
                  onPressed: onBookNowPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
