// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chadhava_offering_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChadhavaOfferingModelImpl _$$ChadhavaOfferingModelImplFromJson(
  Map<String, dynamic> json,
) => _$ChadhavaOfferingModelImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  price: (json['price'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? true,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  imageUrl: json['image_url'] as String?,
  chadhavas: (json['chadhavas'] as List<dynamic>?)
      ?.map((e) => ChadhavaModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pujas: (json['pujas'] as List<dynamic>?)
      ?.map((e) => PujaModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  deities: (json['deities'] as List<dynamic>?)
      ?.map((e) => DeityModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ChadhavaOfferingModelImplToJson(
  _$ChadhavaOfferingModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'price': instance.price,
  'isActive': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  if (instance.imageUrl case final value?) 'image_url': value,
  if (instance.chadhavas?.map((e) => e.toJson()).toList() case final value?)
    'chadhavas': value,
  if (instance.pujas?.map((e) => e.toJson()).toList() case final value?)
    'pujas': value,
  if (instance.deities?.map((e) => e.toJson()).toList() case final value?)
    'deities': value,
};
