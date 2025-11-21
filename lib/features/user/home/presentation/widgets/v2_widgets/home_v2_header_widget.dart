import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Home V2 header widget
///
/// Displays the header bar with hamburger menu, app title, and WhatsApp icon.
/// Used in the orange background section of the home page v2.
class HomeV2HeaderWidget extends StatelessWidget {
  const HomeV2HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Hamburger menu icon
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: context.colorScheme.onPrimary,
                size: 24.sp,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          // App title
          Text(
            'PoojaKaro',
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onPrimary,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          // WhatsApp icon
          IconButton(
            icon: Image.asset(
              'assets/icons/filled-whatsapp.png',
              width: 24.w,
              height: 24.h,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.chat, color: Colors.green, size: 24.sp);
              },
            ),
            onPressed: () {
              // TODO: Implement WhatsApp action
            },
          ),
        ],
      ),
    );
  }
}
