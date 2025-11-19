import 'package:flutter_bloc/flutter_bloc.dart';
import 'chadhava_card_event.dart';
import 'chadhava_card_state.dart';

/// Chadhava card BLoC
///
/// Manages the state of the chadhava offering card widget,
/// specifically the description expansion toggle.
class ChadhavaCardBloc extends Bloc<ChadhavaCardEvent, ChadhavaCardState> {
  ChadhavaCardBloc() : super(const ChadhavaCardState()) {
    on<DescriptionExpansionToggled>(_onDescriptionExpansionToggled);
  }

  void _onDescriptionExpansionToggled(
    DescriptionExpansionToggled event,
    Emitter<ChadhavaCardState> emit,
  ) {
    emit(state.copyWith(isDescriptionExpanded: !state.isDescriptionExpanded));
  }
}
