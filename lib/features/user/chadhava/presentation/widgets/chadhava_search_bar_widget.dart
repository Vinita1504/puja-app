import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../providers/chadhava_providers.dart';

/// Chadhava search bar widget
///
/// Displays a search input field for searching chadhava offerings.
/// Updates searchQueryProvider when user types.
class ChadhavaSearchBarWidget extends ConsumerStatefulWidget {
  const ChadhavaSearchBarWidget({super.key});

  @override
  ConsumerState<ChadhavaSearchBarWidget> createState() =>
      _ChadhavaSearchBarWidgetState();
}

class _ChadhavaSearchBarWidgetState
    extends ConsumerState<ChadhavaSearchBarWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: ref.read(searchQueryProvider));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);

    // Update controller if search query changes externally
    if (_controller.text != searchQuery) {
      _controller.text = searchQuery;
      _controller.selection = TextSelection.collapsed(offset: searchQuery.length);
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: SizedBox(
        height: 48.0,
        child: TextFormField(
          controller: _controller,
          decoration: context.searchInputDecoration(
            hintText: 'Search Chadhava',
          ),
          onChanged: (value) {
            ref.read(searchQueryProvider.notifier).state = value;
          },
        ),
      ),
    );
  }
}

