// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempleModelImpl _$$TempleModelImplFromJson(Map<String, dynamic> json) =>
    _$TempleModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      address: json['address'] as String?,
      overview: json['overview'] as String?,
      history: json['history'] as String?,
      significance: json['significance'] as String?,
      architecture: json['architecture'] as String?,
      offeringsText: json['offerings_text'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TempleModelImplToJson(_$TempleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      if (instance.address case final value?) 'address': value,
      if (instance.overview case final value?) 'overview': value,
      if (instance.history case final value?) 'history': value,
      if (instance.significance case final value?) 'significance': value,
      if (instance.architecture case final value?) 'architecture': value,
      if (instance.offeringsText case final value?) 'offerings_text': value,
      if (instance.lat case final value?) 'lat': value,
      if (instance.lng case final value?) 'lng': value,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
