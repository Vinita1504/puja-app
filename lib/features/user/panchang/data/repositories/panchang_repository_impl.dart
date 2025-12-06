import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entities/panchang_entity.dart';
import '../../domain/repositories/panchang_repository.dart';
import '../datasources/panchang_local_datasource.dart';

/// Panchang repository implementation (Data layer)
///
/// Implements the domain repository interface using local data source.
class PanchangRepositoryImpl implements PanchangRepository {
  final PanchangLocalDataSource localDataSource;

  PanchangRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, PanchangEntity>> getTodayPanchang() async {
    try {
      final model = await localDataSource.getTodayPanchang();
      return Right(model.toEntity());
    } catch (e) {
      return Left(
        Failure.cache(
          message: 'Failed to load Panchang data: ${e.toString()}',
        ),
      );
    }
  }
}

