import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/know_about_yourself_result.dart';

/// Know about yourself result card widget
///
/// Displays a single personal attribute section card with icon, title,
/// highlighted text box, and expandable explanatory text.
class KnowAboutYourselfResultCardWidget extends StatelessWidget {
  /// Personal attribute section data
  final PersonalAttributeSection section;

  const KnowAboutYourselfResultCardWidget({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    // Get icon and color based on category
    final iconData = _getIconFromCategory(section.category);
    final iconColor = _getColorFromCategory(section.category);

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 0.5.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon and Title in one row
          Row(
            children: [
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconColor.withValues(alpha: 0.1),
                ),
                child: Icon(
                  iconData,
                  color: iconColor,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  section.title,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Highlighted text box (yellow background)
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withValues(alpha: 0.2), // Light yellow
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              section.meaning,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // Expandable explanatory text
          ExpandableText(
            section.description,
            expandText: 'Read More',
            collapseText: 'Read Less',
            maxLines: 3,
            linkColor: context.colorScheme.primary,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  /// Get Material Icon from category
  IconData _getIconFromCategory(String category) {
    switch (category.toLowerCase()) {
      case 'destiny':
        return Icons.star;
      case 'personality':
        return Icons.psychology;
      case 'attitude':
        return Icons.rocket_launch;
      case 'character':
        return Icons.science;
      case 'soul':
        return Icons.favorite;
      case 'agenda':
        return Icons.visibility_off;
      case 'purpose':
        return Icons.auto_awesome;
      default:
        return Icons.info;
    }
  }

  /// Get color from category
  Color _getColorFromCategory(String category) {
    switch (category.toLowerCase()) {
      case 'destiny':
        return const Color(0xFFFFD700); // Yellow
      case 'personality':
        return const Color(0xFFFF69B4); // Pink
      case 'attitude':
        return const Color(0xFFFF0000); // Red
      case 'character':
        return const Color(0xFFFFD700); // Yellow
      case 'soul':
        return const Color(0xFFFF6B6B); // Light red/pink
      case 'agenda':
        return const Color(0xFF00008B); // Dark blue
      case 'purpose':
        return const Color(0xFFFF6B6B); // Rainbow-like color
      default:
        return Colors.blue;
    }
  }
}

