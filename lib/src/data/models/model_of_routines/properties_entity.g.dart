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
      json['expected_value'] as String?,
      json['less_than'] as bool?,
      json['more_than'] as bool?,
      json['equal'] as bool?,
    );

Map<String, dynamic> _$PropertiesEntityToJson(PropertiesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type_of_value': instance.typeOfValue,
      'expected_value': instance.expectedValue,
      'less_than': instance.lessThan,
      'more_than': instance.moreThan,
      'equal': instance.equal,
    };
