// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offering_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferingItemModelImpl _$$OfferingItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$OfferingItemModelImpl(
  id: json['id'] as String,
  templeId: json['temple_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  price: (json['price'] as num).toInt(),
  imageUrl: json['image_url'] as String?,
);

Map<String, dynamic> _$$OfferingItemModelImplToJson(
  _$OfferingItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'temple_id': instance.templeId,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  if (instance.imageUrl case final value?) 'image_url': value,
};
