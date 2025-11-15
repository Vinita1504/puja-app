// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puja_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PujaCategoryModelImpl _$$PujaCategoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$PujaCategoryModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  slug: json['slug'] as String,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  imageUrl: json['image_url'] as String?,
  parentCategoryId: json['parent_category_id'] as String?,
);

Map<String, dynamic> _$$PujaCategoryModelImplToJson(
  _$PujaCategoryModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  'slug': instance.slug,
  'is_active': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  if (instance.imageUrl case final value?) 'image_url': value,
  if (instance.parentCategoryId case final value?) 'parent_category_id': value,
};
