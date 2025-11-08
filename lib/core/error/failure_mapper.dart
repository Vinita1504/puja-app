import 'exceptions.dart';
import 'failures.dart';

/// Maps exceptions to failures
class FailureMapper {
  static Failure mapExceptionToFailure(Exception exception) {
    if (exception is ServerException) {
      return Failure.server(
        message: exception.message,
        statusCode: exception.statusCode,
      );
    } else if (exception is NetworkException) {
      return Failure.network(message: exception.message);
    } else if (exception is CacheException) {
      return Failure.cache(message: exception.message);
    } else if (exception is ValidationException) {
      return Failure.validation(message: exception.message);
    } else {
      return Failure.unknown(
        message: exception.toString(),
      );
    }
  }
}

