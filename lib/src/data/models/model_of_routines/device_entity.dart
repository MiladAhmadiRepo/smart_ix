import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/device.dart';
import 'package:smart_ix/src/data/models/model_of_routines/properties_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/properties.dart';
part 'device_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceEntity {

  final String? id;
  final String? name;
  final bool? activityState;
  final PropertiesEntity? properties;

	DeviceEntity(this.id,
		this.name,
		this.activityState,
		this.properties);
		factory DeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$DeviceEntityFromJson(json);
		Map<String, dynamic> toJson() => _$DeviceEntityToJson(this);

	DeviceEntity copyWith({String? id,
		String? name,
		bool? activityState,
		PropertiesEntity? properties}) => 
	DeviceEntity(id ?? this.id,
		name ?? this.name,
		activityState ?? this.activityState,
		properties ?? this.properties);
	Device mapToDomain() =>
 Device(this.id, this.name, this.activityState, this.properties?.mapToDomain());
	factory DeviceEntity.mapFromDomain(Device? domain) =>
 DeviceEntity(domain?.id, domain?.name, domain?.activityState, PropertiesEntity.mapFromDomain(domain?.properties));
}