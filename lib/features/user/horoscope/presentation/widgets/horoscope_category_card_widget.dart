import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import '../../../../../core/extensions/context_extension.dart';
import '../../domain/entities/horoscope_category.dart';

/// Horoscope category card widget
///
/// Reusable card widget for displaying a single horoscope category
/// with title, description, and animated circular score indicator.
class HoroscopeCategoryCardWidget extends StatefulWidget {
  final HoroscopeCategory category;

  const HoroscopeCategoryCardWidget({
    super.key,
    required this.category,
  });

  @override
  State<HoroscopeCategoryCardWidget> createState() =>
      _HoroscopeCategoryCardWidgetState();
}

class _HoroscopeCategoryCardWidgetState
    extends State<HoroscopeCategoryCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: widget.category.score / 100.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutCubic,
      ),
    );

    // Start animation on first load
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            children: [
              // Title and description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.category.title,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      widget.category.description,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              // Animated circular score indicator
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  final animatedScore = (_animation.value * 100).round();
                  return _CircularScoreIndicator(
                    score: animatedScore,
                    progress: _animation.value,
                    size: 60,
                  );
                },
              ),
            ],
          ),
        ),
        // Divider
        Divider(
          height: 1,
          thickness: 1,
          color: context.colorScheme.outlineVariant,
          indent: 16.w,
          endIndent: 16.w,
        ),
      ],
    );
  }
}

class _CircularScoreIndicator extends StatelessWidget {
  final int score;
  final double progress;
  final double size;

  const _CircularScoreIndicator({
    required this.score,
    required this.progress,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final strokeWidth = 6.0;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          CustomPaint(
            size: Size(size, size),
            painter: _CircularProgressPainter(
              progress: 1.0,
              color: Colors.grey.shade300,
              strokeWidth: strokeWidth,
            ),
          ),
          // Progress arc
          CustomPaint(
            size: Size(size, size),
            painter: _CircularProgressPainter(
              progress: progress,
              color: Colors.orange,
              strokeWidth: strokeWidth,
            ),
          ),
          // Score text
          Text(
            '$score',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double progress;
  final Color color;
  final double strokeWidth;

  _CircularProgressPainter({
    required this.progress,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Start from top (-90 degrees)
    const startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_CircularProgressPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

