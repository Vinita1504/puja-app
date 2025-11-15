import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chadhava.dart';
import '../../../puja/data/models/puja_model.dart';
import '../../../deity/data/models/deity_model.dart';
import '../../../temple/data/models/temple_model.dart';
import 'chadhava_offering_model.dart';

part 'chadhava_model.freezed.dart';
part 'chadhava_model.g.dart';

/// Chadhava model (Data layer)
///
/// Data transfer object for chadhava events.
@freezed
class ChadhavaModel with _$ChadhavaModel {
  const factory ChadhavaModel({
    /// Unique identifier for the chadhava event
    required String id,

    /// Title or name of the chadhava event or festival
    required String title,

    /// Detailed description of the chadhava event
    required String description,

    /// Whether this chadhava is currently active
    @Default(true) bool isActive,

    /// Array of image URLs showcasing the chadhava event
    @Default([]) @JsonKey(name: 'image_urls') List<String> imageUrls,

    /// Optional start date and time when the chadhava event begins
    @JsonKey(name: 'start_datetime') DateTime? startDatetime,

    /// Optional end date and time when the chadhava event concludes
    @JsonKey(name: 'end_datetime') DateTime? endDatetime,

    /// Timestamp when the chadhava record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the chadhava record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,

    /// Array of puja models associated with this chadhava
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,

    /// Array of deity models associated with this chadhava
    @JsonKey(name: 'deities') List<DeityModel>? deities,

    /// Array of temple models associated with this chadhava
    @JsonKey(name: 'temples') List<TempleModel>? temples,

    /// Array of chadhava offering models associated with this chadhava
    @JsonKey(name: 'chadhava_offerings') List<ChadhavaOfferingModel>? chadhavaOfferings,
  }) = _ChadhavaModel;

  const ChadhavaModel._();

  /// Convert to entity (Domain layer)
  ChadhavaEntity toEntity() {
    return ChadhavaEntity(
      id: id,
      title: title,
      description: description,
      isActive: isActive,
      imageUrls: imageUrls,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
      createdAt: createdAt,
      updatedAt: updatedAt,
      pujas: pujas?.map((p) => p.toEntity()).toList(),
      deities: deities?.map((d) => d.toEntity()).toList(),
      temples: temples?.map((t) => t.toEntity()).toList(),
      chadhavaOfferings: chadhavaOfferings?.map((co) => co.toEntity()).toList(),
    );
  }

  /// Create from entity
  factory ChadhavaModel.fromEntity(ChadhavaEntity entity) {
    return ChadhavaModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      isActive: entity.isActive,
      imageUrls: entity.imageUrls,
      startDatetime: entity.startDatetime,
      endDatetime: entity.endDatetime,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      pujas: entity.pujas?.map((p) => PujaModel.fromEntity(p)).toList(),
      deities: entity.deities?.map((d) => DeityModel.fromEntity(d)).toList(),
      temples: entity.temples?.map((t) => TempleModel.fromEntity(t)).toList(),
      chadhavaOfferings: entity.chadhavaOfferings?.map((co) => ChadhavaOfferingModel.fromEntity(co)).toList(),
    );
  }

  /// Create from JSON
  factory ChadhavaModel.fromJson(Map<String, dynamic> json) =>
      _$ChadhavaModelFromJson(json);
}

