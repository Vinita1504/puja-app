import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/routing/app_routes.dart';

/// Home drawer widget
///
/// Displays a navigation drawer with app branding and menu items
/// for Home, Profile, and Settings.
class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: context.colorScheme.primary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Pooja Karo',
                  style: context.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Spiritual Services',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.profile);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              // TODO: Navigate to settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.stars),
            title: const Text('Horoscope'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.horoscopeDetails);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Panchang'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.panchang);
            },
          ),
          ListTile(
            leading: const Icon(Icons.self_improvement),
            title: const Text('Know About Yourself'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.knowAboutYourself);
            },
          ),
          ListTile(
            leading: const Icon(Icons.event_available),
            title: const Text('Muhrat Finder'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.muhuratFinder);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Kundali Finder'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.kundaliFinder);
            },
          ),
          ListTile(
            leading: const Icon(Icons.auto_awesome),
            title: const Text('Dosha Finder'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.doshaFinder);
            },
          ),
          ListTile(
            leading: const Icon(Icons.assessment),
            title: const Text('Dosha Result'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.doshaResult);
            },
          ),
        ],
      ),
    );
  }
}
