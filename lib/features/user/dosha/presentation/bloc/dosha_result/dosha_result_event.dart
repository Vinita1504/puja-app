/// Dosha result events
abstract class DoshaResultEvent {
  const DoshaResultEvent();
}

/// Load dosha result data
class DoshaResultLoaded extends DoshaResultEvent {
  const DoshaResultLoaded();
}

/// Change selected tab (0 = Mangal, 1 = Shankhpal)
class DoshaTabChanged extends DoshaResultEvent {
  final int tabIndex;

  const DoshaTabChanged({required this.tabIndex});
}

/// Toggle accordion expansion for Mangal factors
class MangalFactorAccordionToggled extends DoshaResultEvent {
  final int index;

  const MangalFactorAccordionToggled({required this.index});
}

/// Toggle Shankhpal meaning accordion
class ShankhpalMeaningAccordionToggled extends DoshaResultEvent {
  const ShankhpalMeaningAccordionToggled();
}

