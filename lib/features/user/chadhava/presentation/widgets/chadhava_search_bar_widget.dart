import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';
import '../bloc/chadhava_list/chadhava_list_bloc.dart';
import '../bloc/chadhava_list/chadhava_list_event.dart';
import '../bloc/chadhava_list/chadhava_list_state.dart';

/// Chadhava search bar widget
///
/// Displays a search input field for searching chadhava offerings.
/// Updates search query in BLoC when user types.
class ChadhavaSearchBarWidget extends StatefulWidget {
  const ChadhavaSearchBarWidget({super.key});

  @override
  State<ChadhavaSearchBarWidget> createState() =>
      _ChadhavaSearchBarWidgetState();
}

class _ChadhavaSearchBarWidgetState extends State<ChadhavaSearchBarWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChadhavaListBloc, ChadhavaListState>(
      builder: (context, state) {
        final searchQuery = state.maybeWhen(
          loaded: (_, __, query, ___, ____) => query,
          orElse: () => '',
        );

        // Update controller if search query changes externally
        if (_controller.text != searchQuery) {
          _controller.text = searchQuery;
          _controller.selection = TextSelection.collapsed(
            offset: searchQuery.length,
          );
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
                context.read<ChadhavaListBloc>().add(
                  ChadhavaListEvent.searchQueryChanged(query: value),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
