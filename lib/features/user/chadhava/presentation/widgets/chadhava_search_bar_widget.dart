import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../providers/chadhava_providers.dart';

/// Chadhava search bar widget
///
/// Displays a search input field for searching chadhava offerings.
/// Updates searchQueryProvider when user types.
class ChadhavaSearchBarWidget extends ConsumerWidget {
  const ChadhavaSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: TextFormField(
        initialValue: searchQuery,
        decoration: context.searchInputDecoration(
          hintText: 'Search Chadhava',
        ),
        onChanged: (value) {
          ref.read(searchQueryProvider.notifier).state = value;
        },
      ),
    );
  }
}

