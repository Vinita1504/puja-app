import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

/// Review entity (Domain layer)
///
/// Represents a user review for a chadhava event.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class Review with _$Review {
  const factory Review({
    /// Unique identifier for the review
    required String id,

    /// Name of the user who wrote the review
    required String userName,

    /// Rating given by the user (typically 1-5)
    @Default(0) int rating,

    /// The review text content
    required String reviewText,

    /// Optional URL to the user's profile image
    String? userImageUrl,

    /// Timestamp when the review was created
    required DateTime createdAt,
  }) = _Review;
}
