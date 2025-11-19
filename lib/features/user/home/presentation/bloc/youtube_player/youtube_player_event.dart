part of 'youtube_player_bloc.dart';

@freezed
class YoutubePlayerEvent with _$YoutubePlayerEvent {
  const factory YoutubePlayerEvent.initialized() = _Initialized;
  const factory YoutubePlayerEvent.readyChanged(bool isReady) = _ReadyChanged;
}
