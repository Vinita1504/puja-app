import 'package:freezed_annotation/freezed_annotation.dart';
import '../error/failures.dart';

part 'result.freezed.dart';

/// Result type for handling success and failure cases
@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;
  const factory Result.failure(Failure failure) = FailureResult<T>;
}
