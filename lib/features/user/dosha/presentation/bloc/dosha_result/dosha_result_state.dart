import '../../../domain/entities/mangal_dosha_result.dart';
import '../../../domain/entities/shankhpal_dosha_result.dart';

/// Dosha result state
abstract class DoshaResultState {
  const DoshaResultState();
}

/// Initial state
class DoshaResultInitial extends DoshaResultState {
  const DoshaResultInitial();
}

/// Loading state
class DoshaResultLoading extends DoshaResultState {
  const DoshaResultLoading();
}

/// Loaded state with dosha data
class DoshaResultLoadedState extends DoshaResultState {
  final MangalDoshaResult? mangalDoshaResult;
  final ShankhpalDoshaResult? shankhpalDoshaResult;
  final int selectedTabIndex; // 0 = Mangal, 1 = Shankhpal
  final Set<int> expandedMangalFactorIndices;
  final bool isShankhpalMeaningExpanded;

  const DoshaResultLoadedState({
    required this.mangalDoshaResult,
    required this.shankhpalDoshaResult,
    this.selectedTabIndex = 0,
    this.expandedMangalFactorIndices = const {},
    this.isShankhpalMeaningExpanded = false,
  });

  DoshaResultLoadedState copyWith({
    MangalDoshaResult? mangalDoshaResult,
    ShankhpalDoshaResult? shankhpalDoshaResult,
    int? selectedTabIndex,
    Set<int>? expandedMangalFactorIndices,
    bool? isShankhpalMeaningExpanded,
  }) {
    return DoshaResultLoadedState(
      mangalDoshaResult: mangalDoshaResult ?? this.mangalDoshaResult,
      shankhpalDoshaResult: shankhpalDoshaResult ?? this.shankhpalDoshaResult,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
      expandedMangalFactorIndices:
          expandedMangalFactorIndices ?? this.expandedMangalFactorIndices,
      isShankhpalMeaningExpanded:
          isShankhpalMeaningExpanded ?? this.isShankhpalMeaningExpanded,
    );
  }
}

/// Error state
class DoshaResultError extends DoshaResultState {
  final String message;

  const DoshaResultError({required this.message});
}

