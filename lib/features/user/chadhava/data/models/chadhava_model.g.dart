// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chadhava_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChadhavaModelImpl _$$ChadhavaModelImplFromJson(Map<String, dynamic> json) =>
    _$ChadhavaModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool? ?? true,
      imageUrls:
          (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      startDatetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
      endDatetime: json['end_datetime'] == null
          ? null
          : DateTime.parse(json['end_datetime'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      pujas: (json['pujas'] as List<dynamic>?)
          ?.map((e) => PujaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deities: (json['deities'] as List<dynamic>?)
          ?.map((e) => DeityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      temples: (json['temples'] as List<dynamic>?)
          ?.map((e) => TempleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      chadhavaOfferings: (json['chadhava_offerings'] as List<dynamic>?)
          ?.map(
            (e) => ChadhavaOfferingModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$ChadhavaModelImplToJson(_$ChadhavaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isActive': instance.isActive,
      'image_urls': instance.imageUrls,
      if (instance.startDatetime?.toIso8601String() case final value?)
        'start_datetime': value,
      if (instance.endDatetime?.toIso8601String() case final value?)
        'end_datetime': value,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      if (instance.pujas?.map((e) => e.toJson()).toList() case final value?)
        'pujas': value,
      if (instance.deities?.map((e) => e.toJson()).toList() case final value?)
        'deities': value,
      if (instance.temples?.map((e) => e.toJson()).toList() case final value?)
        'temples': value,
      if (instance.chadhavaOfferings?.map((e) => e.toJson()).toList()
          case final value?)
        'chadhava_offerings': value,
    };
