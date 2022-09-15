// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_of_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelOfWeathers _$$_ModelOfWeathersFromJson(Map<String, dynamic> json) =>
    _$_ModelOfWeathers(
      userId: json['userId'] as String,
      devices: json['devices'] as List<dynamic>,
      services: (json['services'] as List<dynamic>)
          .map((e) => ModelOfService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelOfWeathersToJson(_$_ModelOfWeathers instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'devices': instance.devices,
      'services': instance.services,
    };

_$_ModelOfService _$$_ModelOfServiceFromJson(Map<String, dynamic> json) =>
    _$_ModelOfService(
      id: json['id'] as String,
      name: json['name'] as String,
      companyName: json['companyName'] as String? ?? '',
      apiVersion: json['apiVersion'] as String? ?? '',
      activityState: json['activityState'] as bool? ?? false,
      weather: ModelOfWeather.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelOfServiceToJson(_$_ModelOfService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyName': instance.companyName,
      'apiVersion': instance.apiVersion,
      'activityState': instance.activityState,
      'weather': instance.weather,
    };

_$_ModelOfWeather _$$_ModelOfWeatherFromJson(Map<String, dynamic> json) =>
    _$_ModelOfWeather(
      location:
          ModelOfLocation.fromJson(json['location'] as Map<String, dynamic>),
      current: ModelOfCurrent.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelOfWeatherToJson(_$_ModelOfWeather instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$_ModelOfCurrent _$$_ModelOfCurrentFromJson(Map<String, dynamic> json) =>
    _$_ModelOfCurrent(
      lastUpdated: json['lastUpdated'] as String,
      tempC: json['tempC'] as int,
      tempF: json['tempF'] as int,
      windDegree: json['windDegree'] as int,
      windDir: json['windDir'] as String? ?? '',
    );

Map<String, dynamic> _$$_ModelOfCurrentToJson(_$_ModelOfCurrent instance) =>
    <String, dynamic>{
      'lastUpdated': instance.lastUpdated,
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
    };

_$_ModelOfLocation _$$_ModelOfLocationFromJson(Map<String, dynamic> json) =>
    _$_ModelOfLocation(
      name: json['name'] as String? ?? '',
      country: json['country'] as String? ?? '',
    );

Map<String, dynamic> _$$_ModelOfLocationToJson(_$_ModelOfLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
    };
