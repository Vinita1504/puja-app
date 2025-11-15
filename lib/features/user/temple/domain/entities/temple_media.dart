import 'package:freezed_annotation/freezed_annotation.dart';
import 'media_type.dart';

part 'temple_media.freezed.dart';

/// TempleMedia entity (Domain layer)
///
/// Represents media files (images or videos) associated with a temple.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class TempleMediaEntity with _$TempleMediaEntity {
  const factory TempleMediaEntity({
    /// Unique identifier for the temple media entry, auto-generated using UUID
    required String id,

    /// Foreign key reference to the temple this media belongs to
    required String templeId,

    /// URL where the media file (image or video) is stored or hosted
    required String url,

    /// Type of media, either IMAGE or VIDEO
    required MediaType type,
  }) = _TempleMediaEntity;
}

