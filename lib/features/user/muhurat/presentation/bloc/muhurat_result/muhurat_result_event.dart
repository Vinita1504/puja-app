/// Muhurat result events
abstract class MuhuratResultEvent {
  const MuhuratResultEvent();
}

/// Event to load muhurat result data
class MuhuratResultLoaded extends MuhuratResultEvent {
  const MuhuratResultLoaded();
}

/// Event to change active tab
class MuhuratResultTabChanged extends MuhuratResultEvent {
  final int tabIndex;

  const MuhuratResultTabChanged({required this.tabIndex});
}

