import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/puja_package.dart';

part 'puja_package_model.freezed.dart';
part 'puja_package_model.g.dart';

/// PujaPackage model (Data layer)
///
/// Data transfer object for puja packages.
@freezed
class PujaPackageModel with _$PujaPackageModel {
  const factory PujaPackageModel({
    /// Unique identifier for the puja package
    required String id,

    /// Name of the puja package as it appears in the catalog
    required String name,

    /// Optional display title for the package
    String? title,

    /// Optional detailed description of what is included in this puja package
    String? description,

    /// Price of the package in paise (smallest currency unit)
    @Default(0) int price,

    /// Whether this package is currently available for purchase
    @Default(true) @JsonKey(name: 'is_active') bool isActive,

    /// Timestamp when the package record was created
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Timestamp when the package record was last updated
    @JsonKey(name: 'updated_at') required DateTime updatedAt,

    /// Optional URL to an image representing this puja package
    @JsonKey(name: 'image_url') String? imageUrl,

    /// Array of benefit descriptions highlighting advantages of this package
    @Default([]) List<String> benefits,
  }) = _PujaPackageModel;

  const PujaPackageModel._();

  /// Convert to entity (Domain layer)
  PujaPackageEntity toEntity() {
    return PujaPackageEntity(
      id: id,
      name: name,
      title: title,
      description: description,
      price: price,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      imageUrl: imageUrl,
      benefits: benefits,
    );
  }

  /// Create from entity
  factory PujaPackageModel.fromEntity(PujaPackageEntity entity) {
    return PujaPackageModel(
      id: entity.id,
      name: entity.name,
      title: entity.title,
      description: entity.description,
      price: entity.price,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      imageUrl: entity.imageUrl,
      benefits: entity.benefits,
    );
  }

  /// Create from JSON
  factory PujaPackageModel.fromJson(Map<String, dynamic> json) =>
      _$PujaPackageModelFromJson(json);
}
