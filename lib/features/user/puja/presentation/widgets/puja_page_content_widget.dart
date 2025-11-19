import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../home/presentation/widgets/puja_card_widget.dart';

/// Puja page content widget
///
/// Displays a scrollable list of puja cards in full-width layout
/// with "Book Now" buttons.
class PujaPageContentWidget extends StatelessWidget {
  const PujaPageContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 16.h),
      children: [
        PujaCardWidget(
          imagePath: 'assets/images/rudra-abhishek.png',
          title: 'Rudrabhisheka Puja',
          description:
              'Rudrabhishek is a powerful ritual to invoke Lord Shiva\'s blessings, peace, and spiritual purification',
          isFullWidth: true,
          showBookNowButton: true,
          onBookNowTap: () {
            context.push('${AppRoutes.pujaDetails}?id=1');
            // TODO: Implement booking navigation
          },
        ),
        PujaCardWidget(
          imagePath: 'assets/images/lakshmi-puja.png',
          title: 'Lakshmi Puja',
          description:
              'Lakshmi Puja is a sacred ritual to welcome Goddess Lakshmi, seeking wealth, prosperity, and well-being.',
          isFullWidth: true,
          showBookNowButton: true,
          onBookNowTap: () {
            // TODO: Implement booking navigation
          },
        ),
        PujaCardWidget(
          imagePath: 'assets/images/rudra-abhishek.png',
          title: 'Rudrabhisheka Puja',
          description:
              'Rudrabhishek is a powerful ritual to invoke Lord Shiva\'s blessings, peace, and spiritual purification',
          isFullWidth: true,
          showBookNowButton: true,
          onBookNowTap: () {
            // TODO: Implement booking navigation
          },
        ),
      ],
    );
  }
}
