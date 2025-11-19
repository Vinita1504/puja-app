import 'package:freezed_annotation/freezed_annotation.dart';

part 'offering_item.freezed.dart';

/// OfferingItem entity (Domain layer)
///
/// Represents an offering item available at a temple.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class OfferingItemEntity with _$OfferingItemEntity {
  const factory OfferingItemEntity({
    /// Unique identifier for the offering item, auto-generated using UUID
    required String id,

    /// Foreign key reference to the temple where this offering is available
    required String templeId,

    /// Name of the offering item that can be made at the temple
    required String name,

    /// Description of the offering item
    required String description,

    /// Price of the offering in paise (1 rupee = 100 paise)
    required int price,

    /// Optional image URL for the offering
    String? imageUrl,
  }) = _OfferingItemEntity;
}
