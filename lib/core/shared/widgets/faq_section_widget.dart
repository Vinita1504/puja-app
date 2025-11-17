import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extensions/context_extension.dart';
import '../../../features/user/chadhava/domain/entities/faq_item.dart';

/// FAQ section widget
///
/// A reusable widget that displays a list of frequently asked questions
/// with expandable answers. Manages expansion state via callbacks.
class FaqSectionWidget extends StatelessWidget {
  /// List of FAQ items to display
  final List<FaqItem> faqs;

  /// Set of indices for expanded FAQ items
  final Set<int> expandedIndices;

  /// Callback function called when an FAQ item is toggled
  /// Receives the index of the toggled item
  final Function(int index) onItemToggled;

  /// Optional custom title for the section
  /// Defaults to 'Frequently Asked Questions' if not provided
  final String? title;

  const FaqSectionWidget({
    super.key,
    required this.faqs,
    required this.expandedIndices,
    required this.onItemToggled,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (faqs.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Text(
            title ?? 'Frequently Asked Questions',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 16.h),
          // FAQ items
          ...faqs.asMap().entries.map((entry) {
            final index = entry.key;
            final faq = entry.value;
            final isExpanded = expandedIndices.contains(index);

            return _FaqItemWidget(
              faq: faq,
              isExpanded: isExpanded,
              onTap: () => onItemToggled(index),
            );
          }),
        ],
      ),
    );
  }
}

class _FaqItemWidget extends StatelessWidget {
  final FaqItem faq;
  final bool isExpanded;
  final VoidCallback onTap;

  const _FaqItemWidget({
    required this.faq,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withOpacity(0.5),
          width: 1.w,
        ),
      ),
      child: Column(
        children: [
          // Question row
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(8.r),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      faq.question,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: context.colorScheme.onSurface,
                  ),
                ],
              ),
            ),
          ),
          // Answer (shown when expanded)
          if (isExpanded)
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  faq.answer,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

