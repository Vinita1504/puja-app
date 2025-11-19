import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/temple_media.dart';
import '../../domain/entities/media_type.dart';

part 'temple_media_model.freezed.dart';
part 'temple_media_model.g.dart';

/// TempleMedia model (Data layer)
///
/// Data transfer object for temple media.
@freezed
class TempleMediaModel with _$TempleMediaModel {
  const factory TempleMediaModel({
    /// Unique identifier for the temple media entry
    required String id,

    /// Foreign key reference to the temple this media belongs to
    @JsonKey(name: 'temple_id') required String templeId,

    /// URL where the media file (image or video) is stored or hosted
    required String url,

    /// Type of media, either IMAGE or VIDEO
    @JsonKey(
      name: 'type',
      fromJson: _mediaTypeFromJson,
      toJson: _mediaTypeToJson,
    )
    required MediaType type,
  }) = _TempleMediaModel;

  const TempleMediaModel._();

  /// Convert to entity (Domain layer)
  TempleMediaEntity toEntity() {
    return TempleMediaEntity(id: id, templeId: templeId, url: url, type: type);
  }

  /// Create from entity
  factory TempleMediaModel.fromEntity(TempleMediaEntity entity) {
    return TempleMediaModel(
      id: entity.id,
      templeId: entity.templeId,
      url: entity.url,
      type: entity.type,
    );
  }

  /// Create from JSON
  factory TempleMediaModel.fromJson(Map<String, dynamic> json) =>
      _$TempleMediaModelFromJson(json);
}

/// Helper function to convert JSON string to MediaType enum
MediaType _mediaTypeFromJson(String json) {
  switch (json.toUpperCase()) {
    case 'IMAGE':
      return MediaType.image;
    case 'VIDEO':
      return MediaType.video;
    default:
      throw ArgumentError('Unknown MediaType: $json');
  }
}

/// Helper function to convert MediaType enum to JSON string
String _mediaTypeToJson(MediaType type) {
  switch (type) {
    case MediaType.image:
      return 'IMAGE';
    case MediaType.video:
      return 'VIDEO';
  }
}
