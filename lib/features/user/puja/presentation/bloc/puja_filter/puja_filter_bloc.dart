import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puja_filter_event.dart';
part 'puja_filter_state.dart';
part 'puja_filter_bloc.freezed.dart';

class PujaFilterBloc extends Bloc<PujaFilterEvent, PujaFilterState> {
  PujaFilterBloc() : super(const PujaFilterState()) {
    on<_CategorySelected>(_onCategorySelected);
    on<_SubcategoryToggled>(_onSubcategoryToggled);
    on<_FilterReset>(_onFilterReset);
    on<_FilterInitialized>(_onFilterInitialized);
  }

  void _onCategorySelected(
    _CategorySelected event,
    Emitter<PujaFilterState> emit,
  ) {
    emit(state.copyWith(selectedCategoryId: event.categoryId));
  }

  void _onSubcategoryToggled(
    _SubcategoryToggled event,
    Emitter<PujaFilterState> emit,
  ) {
    final updatedSubcategories = Set<String>.from(state.selectedSubcategories);
    if (updatedSubcategories.contains(event.subcategoryName)) {
      updatedSubcategories.remove(event.subcategoryName);
    } else {
      updatedSubcategories.add(event.subcategoryName);
    }

    emit(state.copyWith(selectedSubcategories: updatedSubcategories));
  }

  void _onFilterReset(
    _FilterReset event,
    Emitter<PujaFilterState> emit,
  ) {
    emit(const PujaFilterState());
  }

  void _onFilterInitialized(
    _FilterInitialized event,
    Emitter<PujaFilterState> emit,
  ) {
    emit(
      state.copyWith(
        selectedSubcategories: event.selectedSubcategories != null
            ? Set<String>.from(event.selectedSubcategories!)
            : <String>{},
      ),
    );
  }
}

