import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/panchang_entity.dart';
import '../repositories/panchang_repository.dart';

/// Get today's Panchang use case
///
/// Follows Single Responsibility Principle - one use case, one responsibility.
/// Fetches today's Panchang details from the repository.
class GetTodayPanchangUseCase {
  final PanchangRepository repository;

  GetTodayPanchangUseCase(this.repository);

  /// Execute the use case
  ///
  /// Returns [Either] containing [PanchangEntity] on success or [Failure] on error.
  Future<Either<Failure, PanchangEntity>> call() async {
    return await repository.getTodayPanchang();
  }
}

