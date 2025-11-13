import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../providers/youtube_player_provider.dart';

/// YouTube player modal widget
///
/// Displays a YouTube video player in a modal dialog.
/// Uses Riverpod for state management instead of setState.
class YoutubePlayerModalWidget extends ConsumerStatefulWidget {
  /// YouTube video ID to play
  final String youtubeVideoId;

  const YoutubePlayerModalWidget({super.key, required this.youtubeVideoId});

  /// Static method to show the YouTube player modal
  static void show(BuildContext context, String youtubeVideoId) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) =>
          YoutubePlayerModalWidget(youtubeVideoId: youtubeVideoId),
    );
  }

  @override
  ConsumerState<YoutubePlayerModalWidget> createState() =>
      _YoutubePlayerModalWidgetState();
}

class _YoutubePlayerModalWidgetState
    extends ConsumerState<YoutubePlayerModalWidget> {
  @override
  Widget build(BuildContext context) {
    final playerState = ref.watch(youtubePlayerProvider(widget.youtubeVideoId));

    // Calculate player dimensions maintaining 16:9 aspect ratio
    final playerWidth = context.screenWidth * 0.9;
    final playerHeight = playerWidth * 9 / 16;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with close button
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Testimonial',
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: context.colorScheme.onSurface,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            // YouTube player
            if (playerState.controller != null)
              Container(
                width: playerWidth,
                height: playerHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                  child: YoutubePlayer(
                    controller: playerState.controller!,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: context.colorScheme.primary,
                    progressColors: ProgressBarColors(
                      playedColor: context.colorScheme.primary,
                      handleColor: context.colorScheme.primary,
                      bufferedColor:
                          context.colorScheme.surfaceContainerHighest,
                      backgroundColor:
                          context.colorScheme.surfaceContainerLowest,
                    ),
                    onReady: () {
                      ref
                          .read(
                            youtubePlayerProvider(
                              widget.youtubeVideoId,
                            ).notifier,
                          )
                          .setReady(true);
                    },
                    onEnded: (metadata) {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            else
              Container(
                width: playerWidth,
                height: playerHeight,
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLowest,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
