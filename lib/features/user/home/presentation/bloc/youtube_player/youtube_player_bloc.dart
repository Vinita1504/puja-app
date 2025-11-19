import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'youtube_player_event.dart';
part 'youtube_player_state.dart';
part 'youtube_player_bloc.freezed.dart';

class YoutubePlayerBloc extends Bloc<YoutubePlayerEvent, YoutubePlayerState> {
  YoutubePlayerBloc({required String videoId})
    : _videoId = videoId,
      super(YoutubePlayerState(videoId: videoId)) {
    on<_Initialized>(_onInitialized);
    on<_ReadyChanged>(_onReadyChanged);

    add(const YoutubePlayerEvent.initialized());
  }

  final String _videoId;
  YoutubePlayerController? _controller;

  void _onInitialized(_Initialized event, Emitter<YoutubePlayerState> emit) {
    final controller = YoutubePlayerController(
      initialVideoId: _videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    )..addListener(_controllerListener);

    _controller = controller;
    emit(state.copyWith(controller: controller));
  }

  void _onReadyChanged(_ReadyChanged event, Emitter<YoutubePlayerState> emit) {
    if (state.isReady == event.isReady) return;
    emit(state.copyWith(isReady: event.isReady));
  }

  void _controllerListener() {
    final controller = _controller;
    if (controller == null) {
      return;
    }

    final isReady = controller.value.isReady;
    if (isReady != state.isReady) {
      add(YoutubePlayerEvent.readyChanged(isReady));
    }
  }

  @override
  Future<void> close() {
    final controller = _controller;
    if (controller != null) {
      controller.removeListener(_controllerListener);
      controller.dispose();
    }
    return super.close();
  }
}
