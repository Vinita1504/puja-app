import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Logo widget displayed on the login page
///
/// Displays the PujaKaro logo image centered at the top of the login screen.
class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/logo/pujakaro-logo.png',
        width: 140.w,
        height: 150.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
