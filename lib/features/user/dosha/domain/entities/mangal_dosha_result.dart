/// Mangal dosha result entity (Domain layer)
///
/// Represents the result of Mangal dosha analysis.
/// Pure business logic, no dependencies on external frameworks.
class MangalDoshaResult {
  /// Whether Mangal dosha is present
  final bool isDoshaPresent;

  /// Dosha score percentage (0-100)
  final int score;

  /// Contributing factors for the dosha
  final MangalDoshaFactors factors;

  /// Bot response message
  final String botResponse;

  const MangalDoshaResult({
    required this.isDoshaPresent,
    required this.score,
    required this.factors,
    required this.botResponse,
  });
}

/// Contributing factors for Mangal dosha
class MangalDoshaFactors {
  /// Moon influence description
  final String? moon;

  /// Saturn influence description
  final String? saturn;

  /// Rahu influence description
  final String? rahu;

  const MangalDoshaFactors({
    this.moon,
    this.saturn,
    this.rahu,
  });
}

