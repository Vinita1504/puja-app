import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'dosh_card_widget.dart';

/// Dosh Puja section widget
///
/// Displays a description and horizontal scrollable list of dosh puja cards.
class DoshPujaSectionWidget extends StatelessWidget {
  const DoshPujaSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colorScheme.surfaceContainerHighest,
            context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            context.colorScheme.surface,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dosh Puja',
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Dosh Pooja is a ritual performed to remove planetary or karmic doshas, bringing peace, prosperity, and protection from obstacles',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                height: 1.3,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 110.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoshCardWidget(
                    imagePath: 'assets/images/kaal-dosh.png',
                    title: 'Kaal Dosh',
                  ),
                  DoshCardWidget(
                    imagePath: 'assets/images/mangal-dosh.png',
                    title: 'Mangal Dosh',
                  ),
                  DoshCardWidget(
                    imagePath: 'assets/images/mangal-dosh.png',
                    title: 'Shani Dosh',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
