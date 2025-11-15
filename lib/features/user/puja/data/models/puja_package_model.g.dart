// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puja_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PujaPackageModelImpl _$$PujaPackageModelImplFromJson(
  Map<String, dynamic> json,
) => _$PujaPackageModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  title: json['title'] as String?,
  description: json['description'] as String?,
  price: (json['price'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  imageUrl: json['image_url'] as String?,
  benefits:
      (json['benefits'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$PujaPackageModelImplToJson(
  _$PujaPackageModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.title case final value?) 'title': value,
  if (instance.description case final value?) 'description': value,
  'price': instance.price,
  'is_active': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  if (instance.imageUrl case final value?) 'image_url': value,
  'benefits': instance.benefits,
};
