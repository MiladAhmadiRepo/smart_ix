import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/devices/owner.dart';
import 'package:smart_ix/src/data/models/model_of_devices/devices_entity.dart';
import 'package:smart_ix/src/domain/entities/devices/devices.dart';

part 'owner_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OwnerEntity {
  final String? userId;
  final List<DevicesEntity>? devices;
  final List<Object>? services;

  OwnerEntity(this.userId, this.devices, this.services);

  factory OwnerEntity.fromJson(Map<String, dynamic> json) => _$OwnerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerEntityToJson(this);

  OwnerEntity copyWith({String? userId, List<DevicesEntity>? devices, List<Object>? services}) =>
      OwnerEntity(userId ?? this.userId, devices ?? this.devices, services ?? this.services);

  Owner mapToDomain() =>
      Owner(this.userId, this.devices?.map((ele) => ele.mapToDomain()).toList(), this.services);

  factory OwnerEntity.mapFromDomain(Owner? domain) => OwnerEntity(domain?.userId,
      domain?.devices?.map((ele) => DevicesEntity.mapFromDomain(ele)).toList(), domain?.services);
}
