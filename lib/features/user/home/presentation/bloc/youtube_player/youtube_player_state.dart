part of 'youtube_player_bloc.dart';

@freezed
class YoutubePlayerState with _$YoutubePlayerState {
  const factory YoutubePlayerState({
    required String videoId,
    YoutubePlayerController? controller,
    @Default(false) bool isReady,
  }) = _YoutubePlayerState;
}
