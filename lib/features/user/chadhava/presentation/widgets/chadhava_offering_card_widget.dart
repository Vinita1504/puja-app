import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/chadhava_offering.dart';

/// Chadhava offering card widget
///
/// Displays a card with offering image, title, rating, description,
/// deity icons, and booking button.
class ChadhavaOfferingCardWidget extends StatefulWidget {
  /// Chadhava offering entity
  final ChadhavaOfferingEntity offering;

  /// Mock rating (to be replaced with actual data later)
  final double rating;

  /// Mock user count (to be replaced with actual data later)
  final int userCount;

  /// Callback when "Book Chadhava" button is tapped
  final VoidCallback? onBookTap;

  const ChadhavaOfferingCardWidget({
    super.key,
    required this.offering,
    this.rating = 4.9,
    this.userCount = 15,
    this.onBookTap,
  });

  @override
  State<ChadhavaOfferingCardWidget> createState() =>
      _ChadhavaOfferingCardWidgetState();
}

class _ChadhavaOfferingCardWidgetState
    extends State<ChadhavaOfferingCardWidget> {
  bool _isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    final deities = widget.offering.deities ?? [];
    final maxDeities = deities.length > 5 ? 5 : deities.length;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
            child: widget.offering.imageUrl != null
                ? Image.asset(
                    widget.offering.imageUrl!,
                    width: double.infinity,
                    height: 200.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: double.infinity,
                        height: 200.h,
                        color: context.colorScheme.surfaceContainerLowest,
                        child: Icon(
                          Icons.image_not_supported,
                          size: 48.sp,
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      );
                    },
                  )
                : Container(
                    width: double.infinity,
                    height: 200.h,
                    color: context.colorScheme.surfaceContainerLowest,
                    child: Icon(
                      Icons.image_not_supported,
                      size: 48.sp,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
          ),

          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  widget.offering.title,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),

                // User engagement and rating row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // User engagement
                    Row(
                      children: [
                        // Mock profile avatars with Stack for overlapping
                        SizedBox(
                          width: (12.r * 2 * 3) + (8.w * 2), // width of 3 avatars with overlap
                          height: 24.r, // height of avatar
                          child: Stack(
                            children: List.generate(3, (index) {
                              return Positioned(
                                left: index * 16.w, // Overlap by 8.w on each side
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: context.colorScheme.surface,
                                      width: 2.w,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 12.r,
                                    backgroundColor:
                                        context.colorScheme.primaryContainer,
                                    child: Icon(
                                      Icons.person,
                                      size: 14.sp,
                                      color: context.colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '${widget.userCount}+',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),

                    // Rating
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16.sp,
                          color: context.colorScheme.primary,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          widget.rating.toString(),
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),

                // Description
                Text(
                  widget.offering.description,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: _isDescriptionExpanded ? null : 2,
                  overflow: _isDescriptionExpanded
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                ),

                // Read More link
                if (widget.offering.description.length > 100)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isDescriptionExpanded = !_isDescriptionExpanded;
                      });
                    },
                    child: Text(
                      _isDescriptionExpanded ? 'Read Less' : 'Read More',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                SizedBox(height: 12.h),

                // Chadhava For section
                Text(
                  'Chadhava For',
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),

                // Deity icons row
                Row(
                  children: List.generate(maxDeities, (index) {
                    final deity = deities[index];
                    final imageUrl = deity.imageUrl;
                    final isNetworkImage = imageUrl != null &&
                        (imageUrl.startsWith('http://') ||
                            imageUrl.startsWith('https://'));

                    return Container(
                      margin: EdgeInsets.only(right: 8.w),
                      child: CircleAvatar(
                        radius: 24.r,
                        backgroundColor:
                            context.colorScheme.surfaceContainerLowest,
                        backgroundImage: imageUrl != null
                            ? (isNetworkImage
                                ? NetworkImage(imageUrl)
                                : AssetImage(imageUrl) as ImageProvider)
                            : null,
                        child: imageUrl == null
                            ? Icon(
                                Icons.temple_hindu,
                                size: 20.sp,
                                color: context.colorScheme.onSurfaceVariant,
                              )
                            : null,
                      ),
                    );
                  }),
                ),
                SizedBox(height: 16.h),

                // Book Chadhava button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: widget.onBookTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colorScheme.primary,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      'Book Chadhava',
                      style: context.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

