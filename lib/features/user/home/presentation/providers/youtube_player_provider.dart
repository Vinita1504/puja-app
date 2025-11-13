import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// State class for YouTube player
class YoutubePlayerState {
  final YoutubePlayerController? controller;
  final bool isReady;
  final String videoId;

  const YoutubePlayerState({
    this.controller,
    this.isReady = false,
    required this.videoId,
  });

  YoutubePlayerState copyWith({
    YoutubePlayerController? controller,
    bool? isReady,
    String? videoId,
  }) {
    return YoutubePlayerState(
      controller: controller ?? this.controller,
      isReady: isReady ?? this.isReady,
      videoId: videoId ?? this.videoId,
    );
  }
}

/// Notifier for managing YouTube player state
class YoutubePlayerNotifier extends StateNotifier<YoutubePlayerState> {
  YoutubePlayerNotifier(String videoId)
    : super(YoutubePlayerState(videoId: videoId)) {
    _initializePlayer(videoId);
  }

  void _initializePlayer(String videoId) {
    final controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    controller.addListener(_playerListener);

    state = state.copyWith(controller: controller);
  }

  void _playerListener() {
    final controller = state.controller;
    if (controller != null && controller.value.isReady && !state.isReady) {
      state = state.copyWith(isReady: true);
    }
  }

  void setReady(bool ready) {
    if (state.isReady != ready) {
      state = state.copyWith(isReady: ready);
    }
  }

  @override
  void dispose() {
    final controller = state.controller;
    if (controller != null) {
      controller.removeListener(_playerListener);
      controller.dispose();
    }
    super.dispose();
  }
}

/// Provider for YouTube player notifier
///
/// Takes a videoId as a parameter to create a unique provider instance
/// for each video.
final youtubePlayerProvider =
    StateNotifierProvider.family<
      YoutubePlayerNotifier,
      YoutubePlayerState,
      String
    >((ref, videoId) {
      return YoutubePlayerNotifier(videoId);
    });
