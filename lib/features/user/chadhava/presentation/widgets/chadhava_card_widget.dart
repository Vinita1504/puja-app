import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/chadhava_offering.dart';
import '../bloc/chadhava_card/chadhava_card_bloc.dart';
import '../bloc/chadhava_card/chadhava_card_event.dart';
import '../bloc/chadhava_card/chadhava_card_state.dart';

/// Chadhava offering card widget
///
/// Displays a card with offering image, title, rating, description,
/// deity icons, and booking button.
class ChadhavaCardWidget extends StatelessWidget {
  /// Chadhava offering entity
  final ChadhavaOfferingEntity offering;

  /// Mock rating (to be replaced with actual data later)
  final double rating;

  /// Mock user count (to be replaced with actual data later)
  final int userCount;

  /// Callback when "Book Chadhava" button is tapped
  final VoidCallback? onBookTap;

  const ChadhavaCardWidget({
    super.key,
    required this.offering,
    this.rating = 4.9,
    this.userCount = 15,
    this.onBookTap,
  });

  @override
  Widget build(BuildContext context) {
    final deities = offering.deities ?? [];

    return BlocProvider(
      create: (context) => ChadhavaCardBloc(),
      child: _ChadhavaOfferingCardContent(
        offering: offering,
        rating: rating,
        userCount: userCount,
        onBookTap: onBookTap,
        deities: deities,
      ),
    );
  }
}

class _ChadhavaOfferingCardContent extends StatelessWidget {
  final ChadhavaOfferingEntity offering;
  final double rating;
  final int userCount;
  final VoidCallback? onBookTap;
  final List<dynamic> deities;

  const _ChadhavaOfferingCardContent({
    required this.offering,
    required this.rating,
    required this.userCount,
    this.onBookTap,
    required this.deities,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
          width: 1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image with aspect ratio
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              child: offering.imageUrl != null
                  ? Image.asset(
                      offering.imageUrl!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
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
                      color: context.colorScheme.surfaceContainerLowest,
                      child: Icon(
                        Icons.image_not_supported,
                        size: 48.sp,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
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
                  offering.title,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),

                // User engagement and rating row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // User engagement
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Mock profile avatars with Stack for overlapping
                          SizedBox(
                            width:
                                (12.r *
                                2 *
                                3), // width of 3 avatars with overlap
                            height: 26.r, // height of avatar
                            child: Stack(
                              children: List.generate(3, (index) {
                                return Positioned(
                                  left:
                                      index *
                                      16.w, // Overlap by 8.w on each side
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
                                        color: context
                                            .colorScheme
                                            .onPrimaryContainer,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          Text(
                            '$userCount+',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    // Rating
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          size: 16.sp,
                          color: context.colorScheme.primary,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          rating.toString(),
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

                // Description with BLoC state
                BlocBuilder<ChadhavaCardBloc, ChadhavaCardState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offering.description,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          maxLines: state.isDescriptionExpanded ? null : 2,
                          overflow: state.isDescriptionExpanded
                              ? TextOverflow.visible
                              : TextOverflow.ellipsis,
                        ),
                        // Read More link
                        if (offering.description.length > 100)
                          Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: GestureDetector(
                              onTap: () {
                                context.read<ChadhavaCardBloc>().add(
                                  const ChadhavaCardEvent.descriptionExpansionToggled(),
                                );
                              },
                              child: Text(
                                state.isDescriptionExpanded
                                    ? 'Read Less'
                                    : 'Read More',
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
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

                // Deity icons row with horizontal scroll
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(deities.length, (index) {
                      final deity = deities[index];
                      final imageUrl = deity.imageUrl;
                      final isNetworkImage =
                          imageUrl != null &&
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
                ),
                SizedBox(height: 16.h),

                // Book Chadhava button
                SizedBox(
                  width: double.maxFinite,
                  child: FilledButton(
                    onPressed: onBookTap,
                    style: FilledButton.styleFrom(
                      backgroundColor: context.colorScheme.primary,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 24.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.r),
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
