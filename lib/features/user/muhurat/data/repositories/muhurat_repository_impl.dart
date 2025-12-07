import '../../domain/entities/muhurat_result.dart';
import '../../domain/repositories/muhurat_repository.dart';
import '../datasources/muhurat_local_datasource.dart';

/// Muhurat repository implementation
///
/// Implements the muhurat repository using a local data source.
class MuhuratRepositoryImpl implements MuhuratRepository {
  final MuhuratLocalDataSource localDataSource;

  MuhuratRepositoryImpl({required this.localDataSource});

  @override
  Future<MuhuratResult> getMuhuratResult() async {
    try {
      final model = await localDataSource.getMuhuratResult();
      return model.toEntity();
    } catch (e) {
      // In a real app, we would handle exceptions and convert to Failures
      // For now, rethrow the exception
      rethrow;
    }
  }
}

