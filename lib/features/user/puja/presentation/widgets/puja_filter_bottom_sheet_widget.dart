import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/di/injection_container.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../data/models/puja_category_model.dart';
import '../bloc/puja_filter/puja_filter_bloc.dart';
import 'filter_bottom_sheet_apply_button_widget.dart';
import 'filter_bottom_sheet_content_widget.dart';
import 'filter_bottom_sheet_header_widget.dart';

/// Puja filter bottom sheet widget
///
/// Main widget for the filter bottom sheet that displays categories and subcategories.
class PujaFilterBottomSheetWidget extends StatelessWidget {
  /// List of all categories to display
  final List<PujaCategoryModel> categories;

  const PujaFilterBottomSheetWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: context.screenHeight * 0.75,
        minHeight: 400.h,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              FilterBottomSheetHeaderWidget(
                onCloseTap: () {
                  context.read<PujaFilterBloc>().add(
                    const PujaFilterEvent.filterReset(),
                  );
                  Navigator.of(context).pop();
                },
              ),
              Expanded(
                child: FilterBottomSheetContentWidget(categories: categories),
              ),
              FilterBottomSheetApplyButtonWidget(
                onApplyTap: (selectedSubcategories) {
                  Navigator.of(context).pop(selectedSubcategories);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  /// Static method to show the filter bottom sheet
  ///
  /// Returns a Future with selected subcategories or null if dismissed.
  static Future<Set<String>?> show(
    BuildContext context, {
    required List<PujaCategoryModel> categories,
    Set<String>? initialSelectedSubcategories,
  }) {
    final result = showModalBottomSheet<Set<String>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (context) => BlocProvider(
        create: (_) {
          final bloc = getIt<PujaFilterBloc>();
          bloc.add(const PujaFilterEvent.filterReset());
          bloc.add(
            PujaFilterEvent.filterInitialized(initialSelectedSubcategories),
          );
          return bloc;
        },
        child: PujaFilterBottomSheetWidget(categories: categories),
      ),
    );

    return result;
  }
}
