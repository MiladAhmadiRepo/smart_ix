import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/devices/devices.dart';
import 'package:smart_ix/src/data/models/model_of_devices/properties_entity.dart';
import 'package:smart_ix/src/domain/entities/devices/properties.dart';

part 'devices_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DevicesEntity {
  final String? id;
  final String? name;
  final String? manufactureName;
  final String? deviceVersion;
  final bool? activityState;
  final List<PropertiesEntity>? properties;

  DevicesEntity(this.id, this.name, this.manufactureName, this.deviceVersion, this.activityState,
      this.properties);

  factory DevicesEntity.fromJson(Map<String, dynamic> json) => _$DevicesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DevicesEntityToJson(this);

  DevicesEntity copyWith(
          {String? id,
          String? name,
          String? manufactureName,
          String? deviceVersion,
          bool? activityState,
          List<PropertiesEntity>? properties}) =>
      DevicesEntity(
          id ?? this.id,
          name ?? this.name,
          manufactureName ?? this.manufactureName,
          deviceVersion ?? this.deviceVersion,
          activityState ?? this.activityState,
          properties ?? this.properties);

  Devices mapToDomain() => Devices(this.id, this.name, this.manufactureName, this.deviceVersion,
      this.activityState, this.properties?.map((ele) => ele.mapToDomain()).toList());

  factory DevicesEntity.mapFromDomain(Devices? domain) => DevicesEntity(
      domain?.id,
      domain?.name,
      domain?.manufactureName,
      domain?.deviceVersion,
      domain?.activityState,
      domain?.properties?.map((ele) => PropertiesEntity.mapFromDomain(ele)).toList());
}
