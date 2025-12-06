import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_today_panchang_usecase.dart';
import 'panchang_event.dart';
import 'panchang_state.dart';

/// Panchang BLoC
///
/// Manages the state of the Panchang page.
/// Handles loading and refreshing Panchang data.
class PanchangBloc extends Bloc<PanchangEvent, PanchangState> {
  final GetTodayPanchangUseCase getTodayPanchangUseCase;

  PanchangBloc({required this.getTodayPanchangUseCase})
      : super(const PanchangState.initial()) {
    on<PanchangLoaded>(_onPanchangLoaded);
    on<PanchangRefreshRequested>(_onPanchangRefreshRequested);
  }

  Future<void> _onPanchangLoaded(
    PanchangLoaded event,
    Emitter<PanchangState> emit,
  ) async {
    emit(const PanchangState.loading());

    final result = await getTodayPanchangUseCase();

    result.fold(
      (failure) => emit(PanchangState.error(
        failure.when(
          server: (message, _) => message,
          network: (message) => message,
          cache: (message) => message,
          validation: (message) => message,
          unknown: (message) => message,
        ),
      )),
      (panchang) => emit(PanchangState.loaded(panchang)),
    );
  }

  Future<void> _onPanchangRefreshRequested(
    PanchangRefreshRequested event,
    Emitter<PanchangState> emit,
  ) async {
    emit(const PanchangState.loading());

    final result = await getTodayPanchangUseCase();

    result.fold(
      (failure) => emit(PanchangState.error(
        failure.when(
          server: (message, _) => message,
          network: (message) => message,
          cache: (message) => message,
          validation: (message) => message,
          unknown: (message) => message,
        ),
      )),
      (panchang) => emit(PanchangState.loaded(panchang)),
    );
  }
}

