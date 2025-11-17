part of 'puja_filter_bloc.dart';

@freezed
class PujaFilterState with _$PujaFilterState {
  const factory PujaFilterState({
    String? selectedCategoryId,
    @Default(<String>{}) Set<String> selectedSubcategories,
  }) = _PujaFilterState;
}

