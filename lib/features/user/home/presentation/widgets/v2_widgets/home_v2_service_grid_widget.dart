import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_v2_service_card_widget.dart';

/// Home V2 service grid widget
///
/// Displays a 2x2 grid of service cards (Chadhava, Home Puja, Astro Tools, Book Priest).
/// Used in the orange background section of the home page v2.
class HomeV2ServiceGridWidget extends StatelessWidget {
  const HomeV2ServiceGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 0.h, bottom: 16.h),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.w,
        mainAxisSpacing: 12.h,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.4,
        children: const [
          HomeV2ServiceCardWidget(
            imagePath: 'assets/images/chadhava-service.png',
            title: 'Chadhava',
          ),
          HomeV2ServiceCardWidget(
            imagePath: 'assets/images/home-puja.png',
            title: 'Home Puja',
          ),
          HomeV2ServiceCardWidget(
            imagePath: 'assets/images/astro-tools.png',
            title: 'Astro Tools',
          ),
          HomeV2ServiceCardWidget(
            imagePath: 'assets/images/book-priest.png',
            title: 'Book Priest',
          ),
        ],
      ),
    );
  }
}
