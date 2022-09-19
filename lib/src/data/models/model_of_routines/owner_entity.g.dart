// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerEntity _$OwnerEntityFromJson(Map<String, dynamic> json) => OwnerEntity(
      json['user_id'] as String?,
      json['when'] == null
          ? null
          : WhenEntity.fromJson(json['when'] as Map<String, dynamic>),
      json['then'] == null
          ? null
          : ThenEntity.fromJson(json['then'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OwnerEntityToJson(OwnerEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'when': instance.when,
      'then': instance.then,
    };
