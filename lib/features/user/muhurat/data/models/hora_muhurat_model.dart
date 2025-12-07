import '../../domain/entities/hora_muhurat.dart';

/// Hora Muhurat model
///
/// Data model for Hora muhurat with JSON serialization support.
class HoraMuhuratModel extends HoraMuhurat {
  const HoraMuhuratModel({
    required super.start,
    required super.end,
    required super.hora,
    required super.benefits,
    required super.luckyGem,
  });

  /// Creates a model from JSON
  factory HoraMuhuratModel.fromJson(Map<String, dynamic> json) {
    return HoraMuhuratModel(
      start: json['start'] as String,
      end: json['end'] as String,
      hora: json['hora'] as String,
      benefits: json['benefits'] as String,
      luckyGem: json['lucky_gem'] as String,
    );
  }

  /// Converts model to JSON
  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end,
      'hora': hora,
      'benefits': benefits,
      'lucky_gem': luckyGem,
    };
  }

  /// Converts model to entity
  HoraMuhurat toEntity() {
    return HoraMuhurat(
      start: start,
      end: end,
      hora: hora,
      benefits: benefits,
      luckyGem: luckyGem,
    );
  }

  /// Creates model from entity
  factory HoraMuhuratModel.fromEntity(HoraMuhurat entity) {
    return HoraMuhuratModel(
      start: entity.start,
      end: entity.end,
      hora: entity.hora,
      benefits: entity.benefits,
      luckyGem: entity.luckyGem,
    );
  }
}

