// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempleTimingModelImpl _$$TempleTimingModelImplFromJson(
  Map<String, dynamic> json,
) => _$TempleTimingModelImpl(
  id: json['id'] as String,
  templeId: json['temple_id'] as String,
  label: json['label'] as String,
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
);

Map<String, dynamic> _$$TempleTimingModelImplToJson(
  _$TempleTimingModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'temple_id': instance.templeId,
  'label': instance.label,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
};
