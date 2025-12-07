import '../entities/muhurat_result.dart';

/// Muhurat repository interface
///
/// Defines the contract for fetching muhurat data.
abstract class MuhuratRepository {
  /// Fetches muhurat result for the given date, time, and location
  Future<MuhuratResult> getMuhuratResult();
}

