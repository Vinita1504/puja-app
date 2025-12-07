import '../../domain/entities/choghadiya_muhurat.dart';

/// Choghadiya Muhurat model
///
/// Data model for Choghadiya muhurat with JSON serialization support.
class ChoghadiyaMuhuratModel extends ChoghadiyaMuhurat {
  const ChoghadiyaMuhuratModel({
    required super.start,
    required super.end,
    required super.muhurat,
    required super.type,
  });

  /// Creates a model from JSON
  factory ChoghadiyaMuhuratModel.fromJson(Map<String, dynamic> json) {
    return ChoghadiyaMuhuratModel(
      start: json['start'] as String,
      end: json['end'] as String,
      muhurat: json['muhurat'] as String,
      type: json['type'] as String,
    );
  }

  /// Converts model to JSON
  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end,
      'muhurat': muhurat,
      'type': type,
    };
  }

  /// Converts model to entity
  ChoghadiyaMuhurat toEntity() {
    return ChoghadiyaMuhurat(
      start: start,
      end: end,
      muhurat: muhurat,
      type: type,
    );
  }

  /// Creates model from entity
  factory ChoghadiyaMuhuratModel.fromEntity(ChoghadiyaMuhurat entity) {
    return ChoghadiyaMuhuratModel(
      start: entity.start,
      end: entity.end,
      muhurat: entity.muhurat,
      type: entity.type,
    );
  }
}

