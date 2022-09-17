// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerEntity _$OwnerEntityFromJson(Map<String, dynamic> json) => OwnerEntity(
      json['user_id'] as String?,
      (json['devices'] as List<dynamic>?)
          ?.map((e) => DevicesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['services'] as List<dynamic>?)?.map((e) => e as Object).toList(),
    );

Map<String, dynamic> _$OwnerEntityToJson(OwnerEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'devices': instance.devices,
      'services': instance.services,
    };
