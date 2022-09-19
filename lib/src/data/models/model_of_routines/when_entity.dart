import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/data/models/model_of_routines/devices_entity.dart';
import 'package:smart_ix/src/data/models/model_of_routines/properties_entity.dart';
part 'when_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WhenEntity {

  final DevicesEntity? devices;
  final PropertiesEntity? properties;
  final String? value;
  final String? option;
  final int? toggle;

	WhenEntity(this.devices,
		this.properties,
		this.value,
		this.option,
		this.toggle);
		factory WhenEntity.fromJson(Map<String, dynamic> json) =>
      _$WhenEntityFromJson(json);
		Map<String, dynamic> toJson() => _$WhenEntityToJson(this);

	WhenEntity copyWith({DevicesEntity? devices,
		PropertiesEntity? properties,
		String? value,
		String? option,
		int? toggle}) => 
	WhenEntity(devices ?? this.devices,
		properties ?? this.properties,
		value ?? this.value,
		option ?? this.option,
		toggle ?? this.toggle);
	When mapToDomain() =>
 When(this.devices?.mapToDomain(), this.properties?.mapToDomain(), this.value, this.option, this.toggle);
	factory WhenEntity.mapFromDomain(When? domain) =>
 WhenEntity(DevicesEntity.mapFromDomain(domain?.devices), PropertiesEntity.mapFromDomain(domain?.properties), domain?.value, domain?.option, domain?.toggle);
}