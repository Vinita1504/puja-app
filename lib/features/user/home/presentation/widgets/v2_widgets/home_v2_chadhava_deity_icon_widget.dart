import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';

/// Home V2 chadhava deity icon widget
///
/// Displays a circular icon for a deity in the chadhava section.
/// Used in the "Chadhava For" section of the home page v2.
class HomeV2ChadhavaDeityIconWidget extends StatelessWidget {
  /// Image path for the deity icon
  final String imagePath;

  /// Optional size for the icon (default: 48.w)
  final double? size;

  const HomeV2ChadhavaDeityIconWidget({
    super.key,
    required this.imagePath,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = size ?? 48.w;
    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colorScheme.surfaceContainerLowest,
        border: Border.all(color: context.colorScheme.outlineVariant, width: 1),
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.image_not_supported,
              size: iconSize * 0.5,
              color: context.colorScheme.onSurfaceVariant,
            );
          },
        ),
      ),
    );
  }
}
