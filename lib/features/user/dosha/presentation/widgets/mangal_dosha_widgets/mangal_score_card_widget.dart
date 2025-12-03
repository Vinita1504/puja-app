import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/mangal_dosha_result.dart';

/// Mangal score card widget
///
/// Displays the Mangal dosha score percentage with an animated linear progress bar
/// and contextual emoji based on score ranges.
class MangalScoreCardWidget extends StatefulWidget {
  final MangalDoshaResult mangalDoshaResult;

  const MangalScoreCardWidget({
    super.key,
    required this.mangalDoshaResult,
  });

  @override
  State<MangalScoreCardWidget> createState() => _MangalScoreCardWidgetState();
}

class _MangalScoreCardWidgetState extends State<MangalScoreCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: widget.mangalDoshaResult.score / 100,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  /// Get Lottie emoji file path based on score range
  String _getLottieEmojiPath(int score) {
    if (score <= 30) {
      return 'assets/lottie/happy.json'; // Happy - Low Manglik
    } else if (score <= 60) {
      return 'assets/lottie/neutral.json'; // Neutral - Moderate Manglik
    } else if (score <= 80) {
      return 'assets/lottie/concerned.json'; // Concerned - High Manglik
    } else {
      return 'assets/lottie/worried.json'; // Worried - Very High Manglik
    }
  }

  /// Get fallback emoji text based on score range
  String _getEmojiForScore(int score) {
    if (score <= 30) {
      return '😊'; // Happy - Low Manglik
    } else if (score <= 60) {
      return '😐'; // Neutral - Moderate Manglik
    } else if (score <= 80) {
      return '😟'; // Concerned - High Manglik
    } else {
      return '😰'; // Worried - Very High Manglik
    }
  }

  /// Get emoji description based on score
  String _getEmojiDescription(int score) {
    if (score <= 30) {
      return 'Low Manglik';
    } else if (score <= 60) {
      return 'Moderate Manglik';
    } else if (score <= 80) {
      return 'High Manglik';
    } else {
      return 'Very High Manglik';
    }
  }

  @override
  Widget build(BuildContext context) {
    final score = widget.mangalDoshaResult.score;
    final emoji = _getEmojiForScore(score);
    final description = _getEmojiDescription(score);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 0.5.w,
        ),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alert Badge (Simple - Icon + Text)
          Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: context.colorScheme.error,
                size: 16.sp,
              ),
              SizedBox(width: 6.w),
              Text(
                'Mangal Dosha Detected',
                style: context.textTheme.labelMedium
                ?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.error,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          // Score and Emoji Row
          Row(
            children: [
              // Lottie Emoji Animation
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: Lottie.asset(
                  _getLottieEmojiPath(score),
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback to text emoji if Lottie file not found
                    return Center(
                      child: Text(
                        emoji,
                        style: TextStyle(fontSize: 40.sp),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 12.w),
              // Score and Label
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '$score',
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary,
                          ),
                        ),
                        Text(
                          '%',
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      description,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          // Animated Progress Bar
          AnimatedBuilder(
            animation: _progressAnimation,
            builder: (context, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Manglik Score',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${(_progressAnimation.value * 100).round()}%',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: LinearProgressIndicator(
                      value: _progressAnimation.value,
                      minHeight: 12.h,
                      backgroundColor: context.colorScheme.surface,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        context.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

