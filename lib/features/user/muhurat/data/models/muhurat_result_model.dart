import '../../domain/entities/muhurat_result.dart';
import 'choghadiya_muhurat_model.dart';
import 'hora_muhurat_model.dart';

/// Muhurat Result model
///
/// Data model for complete muhurat result with JSON serialization support.
class MuhuratResultModel extends MuhuratResult {
  const MuhuratResultModel({
    required super.dayMuhurats,
    required super.nightMuhurats,
    required super.horas,
    required super.dayOfWeek,
  });

  /// Creates a model from JSON
  /// Expects two separate JSON objects: one for Choghadiya and one for Hora
  factory MuhuratResultModel.fromJson({
    required Map<String, dynamic> choghadiyaJson,
    required Map<String, dynamic> horaJson,
  }) {
    final dayMuhurats = (choghadiyaJson['response']['day'] as List)
        .map((json) => ChoghadiyaMuhuratModel.fromJson(json))
        .toList();

    final nightMuhurats = (choghadiyaJson['response']['night'] as List)
        .map((json) => ChoghadiyaMuhuratModel.fromJson(json))
        .toList();

    final horas = (horaJson['response']['horas'] as List)
        .map((json) => HoraMuhuratModel.fromJson(json))
        .toList();

    final dayOfWeek = choghadiyaJson['response']['day_of_week'] as String;

    return MuhuratResultModel(
      dayMuhurats: dayMuhurats,
      nightMuhurats: nightMuhurats,
      horas: horas,
      dayOfWeek: dayOfWeek,
    );
  }

  /// Converts model to entity
  MuhuratResult toEntity() {
    return MuhuratResult(
      dayMuhurats: dayMuhurats
          .map((model) => (model as ChoghadiyaMuhuratModel).toEntity())
          .toList(),
      nightMuhurats: nightMuhurats
          .map((model) => (model as ChoghadiyaMuhuratModel).toEntity())
          .toList(),
      horas: horas
          .map((model) => (model as HoraMuhuratModel).toEntity())
          .toList(),
      dayOfWeek: dayOfWeek,
    );
  }

  /// Creates model from entity
  factory MuhuratResultModel.fromEntity(MuhuratResult entity) {
    return MuhuratResultModel(
      dayMuhurats: entity.dayMuhurats
          .map((entity) => ChoghadiyaMuhuratModel.fromEntity(entity))
          .toList(),
      nightMuhurats: entity.nightMuhurats
          .map((entity) => ChoghadiyaMuhuratModel.fromEntity(entity))
          .toList(),
      horas: entity.horas
          .map((entity) => HoraMuhuratModel.fromEntity(entity))
          .toList(),
      dayOfWeek: entity.dayOfWeek,
    );
  }
}

