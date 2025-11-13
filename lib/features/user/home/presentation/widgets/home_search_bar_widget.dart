import 'package:flutter/material.dart';
import 'package:puja_karo/core/extensions/input_decoration_extension.dart';

/// Home search bar widget
///
/// Displays a compact search bar for searching pooja services.
/// Features a light gray background with rounded corners and search icon.
class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: context.searchInputDecoration(hintText: 'Search Pooja'),
    );
  }
}
