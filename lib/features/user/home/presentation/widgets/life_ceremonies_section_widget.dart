import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ceremony_card_widget.dart';

/// Life Ceremonies section widget
///
/// Displays a horizontal scrollable list of life ceremony cards
/// on a dark brown background with golden patterns.
class LifeCeremoniesSectionWidget extends StatelessWidget {
  const LifeCeremoniesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/life-ceremony.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 38.h),
          SizedBox(
            height: 130.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                SizedBox(
                  width: 140.w,
                  height: 160.h,
                  child: const CeremonyCardWidget(
                    imagePath: 'assets/images/annaprashan.png',
                    title: 'Annaprashan',
                  ),
                ),
                SizedBox(
                  width: 140.w,
                  height: 160.h,
                  child: const CeremonyCardWidget(
                    imagePath: 'assets/images/upanyanam.png',
                    title: 'Upanyanam',
                  ),
                ),
                SizedBox(
                  width: 140.w,
                  height: 160.h,
                  child: const CeremonyCardWidget(
                    imagePath: 'assets/images/vivah-puja.png',
                    title: 'Vivah Puja',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
