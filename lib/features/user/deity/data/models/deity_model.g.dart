// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeityModelImpl _$$DeityModelImplFromJson(Map<String, dynamic> json) =>
    _$DeityModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      story: json['story'] as String?,
      imageUrl: json['imageUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DeityModelImplToJson(_$DeityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.story case final value?) 'story': value,
      if (instance.imageUrl case final value?) 'imageUrl': value,
      if (instance.thumbnailUrl case final value?) 'thumbnailUrl': value,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
