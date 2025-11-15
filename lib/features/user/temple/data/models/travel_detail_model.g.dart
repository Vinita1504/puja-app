// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelDetailModelImpl _$$TravelDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$TravelDetailModelImpl(
  id: json['id'] as String,
  templeId: json['temple_id'] as String,
  mode: _travelModeFromJson(json['mode'] as String),
  details: json['details'] as String,
);

Map<String, dynamic> _$$TravelDetailModelImplToJson(
  _$TravelDetailModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'temple_id': instance.templeId,
  'mode': _travelModeToJson(instance.mode),
  'details': instance.details,
};
