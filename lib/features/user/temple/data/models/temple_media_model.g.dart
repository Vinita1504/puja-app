// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempleMediaModelImpl _$$TempleMediaModelImplFromJson(
  Map<String, dynamic> json,
) => _$TempleMediaModelImpl(
  id: json['id'] as String,
  templeId: json['temple_id'] as String,
  url: json['url'] as String,
  type: _mediaTypeFromJson(json['type'] as String),
);

Map<String, dynamic> _$$TempleMediaModelImplToJson(
  _$TempleMediaModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'temple_id': instance.templeId,
  'url': instance.url,
  'type': _mediaTypeToJson(instance.type),
};
