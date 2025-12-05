import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/know_about_yourself_result.dart';

part 'know_about_yourself_result_model.g.dart';

/// Know about yourself result model (Data layer)
///
/// Data transfer object for know about yourself results.
@JsonSerializable()
class KnowAboutYourselfResultModel {
  /// Destiny section
  final PersonalAttributeSectionModel destiny;

  /// Personality section
  final PersonalAttributeSectionModel personality;

  /// Attitude section
  final PersonalAttributeSectionModel attitude;

  /// Character section
  final PersonalAttributeSectionModel character;

  /// Soul Urge section
  final PersonalAttributeSectionModel soul;

  /// Hidden Agenda section
  final PersonalAttributeSectionModel agenda;

  /// Divine Purpose section
  final PersonalAttributeSectionModel purpose;

  KnowAboutYourselfResultModel({
    required this.destiny,
    required this.personality,
    required this.attitude,
    required this.character,
    required this.soul,
    required this.agenda,
    required this.purpose,
  });

  /// Convert to entity (Domain layer)
  KnowAboutYourselfResultEntity toEntity() {
    return KnowAboutYourselfResultEntity(
      destiny: destiny.toEntity(),
      personality: personality.toEntity(),
      attitude: attitude.toEntity(),
      character: character.toEntity(),
      soul: soul.toEntity(),
      agenda: agenda.toEntity(),
      purpose: purpose.toEntity(),
    );
  }

  /// Create from JSON
  factory KnowAboutYourselfResultModel.fromJson(Map<String, dynamic> json) =>
      _$KnowAboutYourselfResultModelFromJson(json);

  /// Convert to JSON
  Map<String, dynamic> toJson() => _$KnowAboutYourselfResultModelToJson(this);
}

/// Personal attribute section model (Data layer)
///
/// Data transfer object for personal attribute sections.
@JsonSerializable()
class PersonalAttributeSectionModel {
  /// Title of the section
  final String title;

  /// Category identifier
  final String category;

  /// Number associated with this attribute
  final String number;

  /// Whether this is a master number
  final bool master;

  /// Meaning text - highlighted summary
  final String meaning;

  /// Description text - detailed explanation
  final String description;

  PersonalAttributeSectionModel({
    required this.title,
    required this.category,
    required this.number,
    required this.master,
    required this.meaning,
    required this.description,
  });

  /// Convert to entity (Domain layer)
  PersonalAttributeSection toEntity() {
    return PersonalAttributeSection(
      title: title,
      category: category,
      number: number,
      master: master,
      meaning: meaning,
      description: description,
    );
  }

  /// Create from JSON
  factory PersonalAttributeSectionModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalAttributeSectionModelFromJson(json);

  /// Convert to JSON
  Map<String, dynamic> toJson() => _$PersonalAttributeSectionModelToJson(this);
}
