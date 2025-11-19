import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expandable_text/expandable_text.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/chadhava_offering.dart';

/// Chadhava offerings list widget
///
/// Displays a list of available offerings with images, descriptions, prices, and add buttons.
class ChadhavaOfferingsListWidget extends StatelessWidget {
  final List<ChadhavaOfferingEntity> offerings;
  final List<ChadhavaOfferingEntity> selectedOfferings;
  final Function(ChadhavaOfferingEntity)? onAddPressed;
  final Function(ChadhavaOfferingEntity)? onRemovePressed;

  const ChadhavaOfferingsListWidget({
    super.key,
    required this.offerings,
    required this.selectedOfferings,
    this.onAddPressed,
    this.onRemovePressed,
  });

  @override
  Widget build(BuildContext context) {
    if (offerings.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Text(
            'List of available offerings',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 16.h),
          // Offerings list
          ...offerings.map((offering) {
            final isSelected = selectedOfferings.any(
              (o) => o.id == offering.id,
            );
            return _OfferingItemWidget(
              offering: offering,
              isSelected: isSelected,
              onPressed: () {
                if (isSelected) {
                  onRemovePressed?.call(offering);
                } else {
                  onAddPressed?.call(offering);
                }
              },
            );
          }),
        ],
      ),
    );
  }
}

class _OfferingItemWidget extends StatelessWidget {
  final ChadhavaOfferingEntity offering;
  final bool isSelected;
  final VoidCallback? onPressed;

  const _OfferingItemWidget({
    required this.offering,
    required this.isSelected,
    this.onPressed,
  });

  String _formatPrice(int priceInPaise) {
    final rupees = priceInPaise / 100;
    return rupees.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpandableText(
                  offering.description,
                  expandText: 'Read More',
                  collapseText: 'Read Less',
                  maxLines: 3,
                  linkColor: Colors.orange,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '₹${_formatPrice(offering.price)}',
                  style: context.textTheme.titleMedium?.copyWith(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          // Image with add button overlay
          Stack(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: offering.imageUrl != null
                      ? DecorationImage(
                          image: AssetImage(offering.imageUrl!),
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: offering.imageUrl == null
                      ? context.colorScheme.surfaceContainerLowest
                      : null,
                ),
                child: offering.imageUrl == null
                    ? Icon(
                        Icons.image_not_supported,
                        size: 32.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      )
                    : null,
              ),
              // Add/Remove button overlay
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8.r),
                        topLeft: Radius.circular(4.r),
                      ),
                      color: isSelected ? Colors.green : Colors.orange,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (isSelected)
                          Icon(Icons.check, size: 14.sp, color: Colors.white),
                        if (isSelected) SizedBox(width: 4.w),
                        Text(
                          isSelected ? 'Added' : 'Add',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
