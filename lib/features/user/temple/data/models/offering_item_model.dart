import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/offering_item.dart';

part 'offering_item_model.freezed.dart';
part 'offering_item_model.g.dart';

/// OfferingItem model (Data layer)
///
/// Data transfer object for offering items.
@freezed
class OfferingItemModel with _$OfferingItemModel {
  const factory OfferingItemModel({
    /// Unique identifier for the offering item
    required String id,

    /// Foreign key reference to the temple where this offering is available
    @JsonKey(name: 'temple_id') required String templeId,

    /// Name of the offering item that can be made at the temple
    required String name,
  }) = _OfferingItemModel;

  const OfferingItemModel._();

  /// Convert to entity (Domain layer)
  OfferingItemEntity toEntity() {
    return OfferingItemEntity(id: id, templeId: templeId, name: name);
  }

  /// Create from entity
  factory OfferingItemModel.fromEntity(OfferingItemEntity entity) {
    return OfferingItemModel(
      id: entity.id,
      templeId: entity.templeId,
      name: entity.name,
    );
  }

  /// Create from JSON
  factory OfferingItemModel.fromJson(Map<String, dynamic> json) =>
      _$OfferingItemModelFromJson(json);
}
