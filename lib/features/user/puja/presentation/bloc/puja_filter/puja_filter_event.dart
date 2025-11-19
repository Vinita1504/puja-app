part of 'puja_filter_bloc.dart';

@freezed
class PujaFilterEvent with _$PujaFilterEvent {
  const factory PujaFilterEvent.categorySelected(String? categoryId) =
      _CategorySelected;

  const factory PujaFilterEvent.subcategoryToggled(String subcategoryName) =
      _SubcategoryToggled;

  const factory PujaFilterEvent.filterReset() = _FilterReset;

  const factory PujaFilterEvent.filterInitialized(
    Set<String>? selectedSubcategories,
  ) = _FilterInitialized;
}
