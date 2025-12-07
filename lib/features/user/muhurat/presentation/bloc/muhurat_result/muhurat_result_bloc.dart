import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repositories/muhurat_repository.dart';
import 'muhurat_result_event.dart';
import 'muhurat_result_state.dart';

/// Muhurat result BLoC
///
/// Manages the state of the muhurat result page,
/// including loading data and switching between tabs.
class MuhuratResultBloc
    extends Bloc<MuhuratResultEvent, MuhuratResultState> {
  final MuhuratRepository repository;

  MuhuratResultBloc({required this.repository})
      : super(const MuhuratResultInitial()) {
    on<MuhuratResultLoaded>(_onMuhuratResultLoaded);
    on<MuhuratResultTabChanged>(_onTabChanged);
  }

  Future<void> _onMuhuratResultLoaded(
    MuhuratResultLoaded event,
    Emitter<MuhuratResultState> emit,
  ) async {
    emit(const MuhuratResultLoading());

    try {
      final result = await repository.getMuhuratResult();
      emit(MuhuratResultLoadedState(muhuratResult: result));
    } catch (e) {
      emit(MuhuratResultError(message: e.toString()));
    }
  }

  void _onTabChanged(
    MuhuratResultTabChanged event,
    Emitter<MuhuratResultState> emit,
  ) {
    if (state is MuhuratResultLoadedState) {
      final currentState = state as MuhuratResultLoadedState;
      emit(currentState.copyWith(selectedTabIndex: event.tabIndex));
    }
  }
}

