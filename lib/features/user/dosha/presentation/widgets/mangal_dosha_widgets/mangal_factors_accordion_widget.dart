import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/mangal_dosha_result.dart';
import '../../bloc/dosha_result/dosha_result_bloc.dart';
import '../../bloc/dosha_result/dosha_result_event.dart';
import '../../bloc/dosha_result/dosha_result_state.dart';

/// Mangal factors accordion widget
///
/// Displays collapsible accordion cards for each contributing factor
/// (Moon Influence, Saturn Influence, Rahu Influence).
class MangalFactorsAccordionWidget extends StatelessWidget {
  final MangalDoshaResult mangalDoshaResult;

  const MangalFactorsAccordionWidget({
    super.key,
    required this.mangalDoshaResult,
  });

  List<_FactorItem> _getFactorItems() {
    final factors = mangalDoshaResult.factors;
    final items = <_FactorItem>[];
    int index = 0;

    if (factors.moon != null) {
      items.add(_FactorItem(
        index: index++,
        title: 'Moon Influence',
        description: factors.moon!,
      ));
    }
    if (factors.saturn != null) {
      items.add(_FactorItem(
        index: index++,
        title: 'Saturn Influence',
        description: factors.saturn!,
      ));
    }
    if (factors.rahu != null) {
      items.add(_FactorItem(
        index: index++,
        title: 'Rahu Influence',
        description: factors.rahu!,
      ));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    final factorItems = _getFactorItems();

    if (factorItems.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contributing Factors',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 8.h),
          ...factorItems.map((item) {
            return _FactorAccordionItem(
              index: item.index,
              title: item.title,
              description: item.description,
            );
          }),
        ],
      ),
    );
  }
}

class _FactorItem {
  final int index;
  final String title;
  final String description;

  _FactorItem({
    required this.index,
    required this.title,
    required this.description,
  });
}

class _FactorAccordionItem extends StatelessWidget {
  final int index;
  final String title;
  final String description;

  const _FactorAccordionItem({
    required this.index,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoshaResultBloc, DoshaResultState>(
      builder: (context, state) {
        final isExpanded = state is DoshaResultLoadedState
            ? state.expandedMangalFactorIndices.contains(index)
            : false;

        return Container(
          margin: EdgeInsets.only(bottom: 12.h),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
              width: 0.5.w,
            ),
          ),
          child: ExpansionTile(
            title: Text(
              title,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorScheme.onSurface,
              ),
            ),
            subtitle: isExpanded
                ? null
                : Text(
                    description,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
            initiallyExpanded: isExpanded,
            onExpansionChanged: (expanded) {
              context.read<DoshaResultBloc>().add(
                    MangalFactorAccordionToggled(index: index),
                  );
            },
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ],
            tilePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            childrenPadding: EdgeInsets.zero,
            iconColor: context.colorScheme.primary,
            collapsedIconColor: context.colorScheme.onSurfaceVariant,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        );
      },
    );
  }
}

