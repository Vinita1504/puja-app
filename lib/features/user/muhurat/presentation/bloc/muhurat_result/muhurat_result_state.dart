import '../../../domain/entities/muhurat_result.dart';

/// Muhurat result states
abstract class MuhuratResultState {
  const MuhuratResultState();
}

/// Initial state
class MuhuratResultInitial extends MuhuratResultState {
  const MuhuratResultInitial();
}

/// Loading state
class MuhuratResultLoading extends MuhuratResultState {
  const MuhuratResultLoading();
}

/// Loaded state with muhurat data
class MuhuratResultLoadedState extends MuhuratResultState {
  final MuhuratResult muhuratResult;
  final int selectedTabIndex;

  const MuhuratResultLoadedState({
    required this.muhuratResult,
    this.selectedTabIndex = 0,
  });

  MuhuratResultLoadedState copyWith({
    MuhuratResult? muhuratResult,
    int? selectedTabIndex,
  }) {
    return MuhuratResultLoadedState(
      muhuratResult: muhuratResult ?? this.muhuratResult,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MuhuratResultLoadedState &&
        other.muhuratResult == muhuratResult &&
        other.selectedTabIndex == selectedTabIndex;
  }

  @override
  int get hashCode => muhuratResult.hashCode ^ selectedTabIndex.hashCode;
}

/// Error state
class MuhuratResultError extends MuhuratResultState {
  final String message;

  const MuhuratResultError({required this.message});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MuhuratResultError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

