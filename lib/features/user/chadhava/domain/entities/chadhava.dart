import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../puja/domain/entities/puja.dart';
import '../../../deity/domain/entities/deity.dart';
import '../../../temple/domain/entities/temple.dart';
import 'chadhava_offering.dart';

part 'chadhava.freezed.dart';

/// Chadhava entity (Domain layer)
///
/// Represents a chadhava event or festival.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class ChadhavaEntity with _$ChadhavaEntity {
  const factory ChadhavaEntity({
    /// Unique identifier for the chadhava event, auto-generated using cuid
    required String id,

    /// Title or name of the chadhava event or festival
    required String title,

    /// Detailed description of the chadhava event, its significance and activities
    required String description,

    /// Whether this chadhava is currently active and visible to users
    @Default(true) bool isActive,

    /// Array of image URLs showcasing the chadhava event or related visuals
    @Default([]) List<String> imageUrls,

    /// Optional start date and time when the chadhava event begins
    DateTime? startDatetime,

    /// Optional end date and time when the chadhava event concludes
    DateTime? endDatetime,

    /// Timestamp when the chadhava record was created
    required DateTime createdAt,

    /// Timestamp when the chadhava record was last updated
    required DateTime updatedAt,

    /// Array of puja entities associated with this chadhava
    List<PujaEntity>? pujas,

    /// Array of deity entities associated with this chadhava
    List<DeityEntity>? deities,

    /// Array of temple entities associated with this chadhava
    List<TempleEntity>? temples,

    /// Array of chadhava offering entities associated with this chadhava
    List<ChadhavaOfferingEntity>? chadhavaOfferings,
  }) = _ChadhavaEntity;
}

