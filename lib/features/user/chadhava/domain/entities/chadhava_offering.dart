import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../puja/domain/entities/puja.dart';
import '../../../deity/domain/entities/deity.dart';
import 'chadhava.dart';

part 'chadhava_offering.freezed.dart';

/// ChadhavaOffering entity (Domain layer)
///
/// Represents an offering package available for a chadhava event.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class ChadhavaOfferingEntity with _$ChadhavaOfferingEntity {
  const factory ChadhavaOfferingEntity({
    /// Unique identifier for the chadhava offering, auto-generated using cuid
    required String id,

    /// Title or name of the offering package available for the chadhava
    required String title,

    /// Detailed description of what is included in this offering package
    required String description,

    /// Price of the offering in paise (smallest currency unit)
    @Default(0) int price,

    /// Whether this offering is currently available for purchase
    @Default(true) bool isActive,

    /// Timestamp when the offering record was created
    required DateTime createdAt,

    /// Timestamp when the offering record was last updated
    required DateTime updatedAt,

    /// Optional URL to an image representing this offering package
    String? imageUrl,

    /// Array of chadhava entities associated with this offering
    List<ChadhavaEntity>? chadhavas,

    /// Array of puja entities associated with this offering
    List<PujaEntity>? pujas,

    /// Array of deity entities associated with this offering
    List<DeityEntity>? deities,
  }) = _ChadhavaOfferingEntity;
}

