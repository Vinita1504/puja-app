import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_item.freezed.dart';

/// FaqItem entity (Domain layer)
///
/// Represents a frequently asked question item.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class FaqItem with _$FaqItem {
  const factory FaqItem({
    /// Unique identifier for the FAQ item
    required String id,

    /// The question text
    required String question,

    /// The answer text
    required String answer,
  }) = _FaqItem;
}
