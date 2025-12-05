// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'know_about_yourself_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnowAboutYourselfResultModel _$KnowAboutYourselfResultModelFromJson(
  Map<String, dynamic> json,
) => KnowAboutYourselfResultModel(
  destiny: PersonalAttributeSectionModel.fromJson(
    json['destiny'] as Map<String, dynamic>,
  ),
  personality: PersonalAttributeSectionModel.fromJson(
    json['personality'] as Map<String, dynamic>,
  ),
  attitude: PersonalAttributeSectionModel.fromJson(
    json['attitude'] as Map<String, dynamic>,
  ),
  character: PersonalAttributeSectionModel.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
  soul: PersonalAttributeSectionModel.fromJson(
    json['soul'] as Map<String, dynamic>,
  ),
  agenda: PersonalAttributeSectionModel.fromJson(
    json['agenda'] as Map<String, dynamic>,
  ),
  purpose: PersonalAttributeSectionModel.fromJson(
    json['purpose'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KnowAboutYourselfResultModelToJson(
  KnowAboutYourselfResultModel instance,
) => <String, dynamic>{
  'destiny': instance.destiny.toJson(),
  'personality': instance.personality.toJson(),
  'attitude': instance.attitude.toJson(),
  'character': instance.character.toJson(),
  'soul': instance.soul.toJson(),
  'agenda': instance.agenda.toJson(),
  'purpose': instance.purpose.toJson(),
};

PersonalAttributeSectionModel _$PersonalAttributeSectionModelFromJson(
  Map<String, dynamic> json,
) => PersonalAttributeSectionModel(
  title: json['title'] as String,
  category: json['category'] as String,
  number: json['number'] as String,
  master: json['master'] as bool,
  meaning: json['meaning'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$PersonalAttributeSectionModelToJson(
  PersonalAttributeSectionModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'category': instance.category,
  'number': instance.number,
  'master': instance.master,
  'meaning': instance.meaning,
  'description': instance.description,
};
