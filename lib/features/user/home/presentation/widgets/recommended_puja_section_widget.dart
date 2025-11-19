import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:puja_karo/core/routing/app_routes.dart';
import 'puja_card_widget.dart';

/// Recommended Puja section widget
///
/// Displays a horizontal scrollable list of recommended puja cards.
class RecommendedPujaSectionWidget extends StatelessWidget {
  const RecommendedPujaSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Recommended Puja',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              GestureDetector(
                onTap: () {
                  context.push('${AppRoutes.pujaDetails}?id=1');
                },
                child: PujaCardWidget(
                  imagePath: 'assets/images/rudra-abhishek.png',
                  title: 'Rudrabhishek Puja',
                  description:
                      'Rudrabhishek is a powerful ritual to invoke Lord Shiva\'s blessings, peace, and spiritual purification',
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push('${AppRoutes.pujaDetails}?id=2');
                },
                child: PujaCardWidget(
                  imagePath: 'assets/images/lakshmi-puja.png',
                  title: 'Lakshmi Puja',
                  description:
                      'Lakshmi Puja is a sacred ritual to welcome Goddess Lakshmi, seeking wealth, prosperity, and well-being.',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
