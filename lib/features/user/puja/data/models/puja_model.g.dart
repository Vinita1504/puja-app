// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puja_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PujaModelImpl _$$PujaModelImplFromJson(Map<String, dynamic> json) =>
    _$PujaModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String?,
      imageUrls:
          (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videoUrls:
          (json['video_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
      isOnline: json['is_online'] as bool? ?? true,
      startDatetime: DateTime.parse(json['start_datetime'] as String),
      endDatetime: DateTime.parse(json['end_datetime'] as String),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
      benefits:
          (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      process:
          (json['process'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PujaModelImplToJson(_$PujaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.categoryId case final value?) 'category_id': value,
      'image_urls': instance.imageUrls,
      'video_urls': instance.videoUrls,
      if (instance.durationMinutes case final value?) 'duration_minutes': value,
      'is_online': instance.isOnline,
      'start_datetime': instance.startDatetime.toIso8601String(),
      'end_datetime': instance.endDatetime.toIso8601String(),
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      'benefits': instance.benefits,
      'process': instance.process,
    };
