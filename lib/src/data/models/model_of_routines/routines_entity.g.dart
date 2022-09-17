// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routines_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutinesEntity _$RoutinesEntityFromJson(Map<String, dynamic> json) =>
    RoutinesEntity(
      json['id'] as int?,
      json['owner'] == null
          ? null
          : OwnerEntity.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutinesEntityToJson(RoutinesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
    };
