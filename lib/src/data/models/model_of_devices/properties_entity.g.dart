// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertiesEntity _$PropertiesEntityFromJson(Map<String, dynamic> json) =>
    PropertiesEntity(
      json['id'] as String?,
      json['name'] as String?,
      json['type_of_value'] as String?,
      json['current_value'] as String?,
      (json['rang'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      json['min_value'] as String?,
      json['max_value'] as String?,
    );

Map<String, dynamic> _$PropertiesEntityToJson(PropertiesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type_of_value': instance.typeOfValue,
      'current_value': instance.currentValue,
      'rang': instance.rang,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
    };
