import 'package:freezed_annotation/freezed_annotation.dart';

part 'puja_package.freezed.dart';

/// PujaPackage entity (Domain layer)
///
/// Represents a puja package available for purchase.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class PujaPackageEntity with _$PujaPackageEntity {
  const factory PujaPackageEntity({
    /// Unique identifier for the puja package, auto-generated using cuid
    required String id,

    /// Name of the puja package as it appears in the catalog
    required String name,

    /// Optional display title for the package, may differ from the name
    String? title,

    /// Optional detailed description of what is included in this puja package
    String? description,

    /// Price of the package in paise (smallest currency unit)
    @Default(0) int price,

    /// Whether this package is currently available for purchase
    @Default(true) bool isActive,

    /// Timestamp when the package record was created
    required DateTime createdAt,

    /// Timestamp when the package record was last updated
    required DateTime updatedAt,

    /// Optional URL to an image representing this puja package
    String? imageUrl,

    /// Array of benefit descriptions highlighting advantages of this package
    @Default([]) List<String> benefits,
  }) = _PujaPackageEntity;
}
