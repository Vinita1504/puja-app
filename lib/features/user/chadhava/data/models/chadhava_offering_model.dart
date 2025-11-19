import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chadhava_offering.dart';
import '../../../puja/data/models/puja_model.dart';
import '../../../deity/data/models/deity_model.dart';
import 'chadhava_model.dart';

part 'chadhava_offering_model.freezed.dart';
part 'chadhava_offering_model.g.dart';

/// ChadhavaOffering model (Data layer)
///
/// Data transfer object for chadhava offerings.
@freezed
class ChadhavaOfferingModel with _$ChadhavaOfferingModel {
  const factory ChadhavaOfferingModel({
    /// Unique identifier for the chadhava offering
    required String id,

    /// Title or name of the offering package
    required String title,

    /// Detailed description of what is included in this offering package
    required String description,

    /// Price of the offering in paise (smallest currency unit)
    @Default(0) int price,

    /// Whether this offering is currently available for purchase
    @Default(true) bool isActive,

    /// Timestamp when the offering record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the offering record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,

    /// Optional URL to an image representing this offering package
    @JsonKey(name: 'image_url') String? imageUrl,

    /// Array of chadhava models associated with this offering
    @JsonKey(name: 'chadhavas') List<ChadhavaModel>? chadhavas,

    /// Array of puja models associated with this offering
    @JsonKey(name: 'pujas') List<PujaModel>? pujas,

    /// Array of deity models associated with this offering
    @JsonKey(name: 'deities') List<DeityModel>? deities,
  }) = _ChadhavaOfferingModel;

  const ChadhavaOfferingModel._();

  /// Convert to entity (Domain layer)
  ChadhavaOfferingEntity toEntity() {
    return ChadhavaOfferingEntity(
      id: id,
      title: title,
      description: description,
      price: price,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      imageUrl: imageUrl,
      chadhavas: chadhavas?.map((c) => c.toEntity()).toList(),
      pujas: pujas?.map((p) => p.toEntity()).toList(),
      deities: deities?.map((d) => d.toEntity()).toList(),
    );
  }

  /// Create from entity
  factory ChadhavaOfferingModel.fromEntity(ChadhavaOfferingEntity entity) {
    return ChadhavaOfferingModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      price: entity.price,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      imageUrl: entity.imageUrl,
      chadhavas: entity.chadhavas
          ?.map((c) => ChadhavaModel.fromEntity(c))
          .toList(),
      pujas: entity.pujas?.map((p) => PujaModel.fromEntity(p)).toList(),
      deities: entity.deities?.map((d) => DeityModel.fromEntity(d)).toList(),
    );
  }

  /// Create from JSON
  factory ChadhavaOfferingModel.fromJson(Map<String, dynamic> json) =>
      _$ChadhavaOfferingModelFromJson(json);
}
