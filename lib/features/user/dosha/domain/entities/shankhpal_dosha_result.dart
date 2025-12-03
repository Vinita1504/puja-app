/// Shankhpal dosha result entity (Domain layer)
///
/// Represents the result of Shankhpal (Kaal Sarp) dosha analysis.
/// Pure business logic, no dependencies on external frameworks.
class ShankhpalDoshaResult {
  /// Whether Shankhpal dosha is present
  final bool isDoshaPresent;

  /// Rahu/Ketu axis (e.g., "4-10")
  final String rahuKetuAxis;

  /// Direction of the dosha (e.g., "Descending")
  final String direction;

  /// List of remedies for the dosha
  final List<String> remedies;

  /// Bot response message
  final String botResponse;

  const ShankhpalDoshaResult({
    required this.isDoshaPresent,
    required this.rahuKetuAxis,
    required this.direction,
    required this.remedies,
    required this.botResponse,
  });
}

