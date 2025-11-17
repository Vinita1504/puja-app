import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';
part 'bottom_nav_bloc.freezed.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState()) {
    on<_TabIndexChanged>(_onTabIndexChanged);
  }

  void _onTabIndexChanged(
    _TabIndexChanged event,
    Emitter<BottomNavState> emit,
  ) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}

