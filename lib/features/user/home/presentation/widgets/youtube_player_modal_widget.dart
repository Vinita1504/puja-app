import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/core/extensions/context_extension.dart';
import 'package:puja_karo/core/di/injection_container.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../bloc/youtube_player/youtube_player_bloc.dart';

/// YouTube player modal widget
///
/// Displays a YouTube video player in a modal dialog.
/// Uses BLoC for state management instead of setState.
class YoutubePlayerModalWidget extends StatelessWidget {
  /// YouTube video ID to play
  final String youtubeVideoId;

  const YoutubePlayerModalWidget({super.key, required this.youtubeVideoId});

  /// Static method to show the YouTube player modal
  static void show(BuildContext context, String youtubeVideoId) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => BlocProvider(
        create: (_) => getIt<YoutubePlayerBloc>(param1: youtubeVideoId),
        child: YoutubePlayerModalWidget(youtubeVideoId: youtubeVideoId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubePlayerBloc, YoutubePlayerState>(
      builder: (context, playerState) {
        final controller = playerState.controller;

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
                if (controller != null)
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
                        controller: controller,
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
                          context
                              .read<YoutubePlayerBloc>()
                              .add(const YoutubePlayerEvent.readyChanged(true));
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
      },
    );
  }
}