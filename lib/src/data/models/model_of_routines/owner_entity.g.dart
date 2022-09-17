// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerEntity _$OwnerEntityFromJson(Map<String, dynamic> json) => OwnerEntity(
      json['user_id'] as String?,
      (json['when'] as List<dynamic>?)
          ?.map((e) => WhenEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['then'] as List<dynamic>?)
          ?.map((e) => ThenEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OwnerEntityToJson(OwnerEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'when': instance.when,
      'then': instance.then,
    };
