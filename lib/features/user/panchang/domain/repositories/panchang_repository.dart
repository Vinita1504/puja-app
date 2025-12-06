import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/panchang_entity.dart';

/// Panchang repository interface (Domain layer)
///
/// Defines the contract for fetching Panchang data.
/// Implementations are in the data layer.
abstract class PanchangRepository {
  /// Get today's Panchang details
  ///
  /// Returns [Either] containing [PanchangEntity] on success or [Failure] on error.
  Future<Either<Failure, PanchangEntity>> getTodayPanchang();
}

