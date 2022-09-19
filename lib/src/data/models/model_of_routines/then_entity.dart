import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';
import 'package:smart_ix/src/data/models/model_of_routines/devices_entity.dart';
import 'package:smart_ix/src/data/models/model_of_routines/properties_entity.dart';
part 'then_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ThenEntity {

  final DevicesEntity? devices;
  final PropertiesEntity? properties;
  final String? value;
  final String? option;
  final int? toggle;

	ThenEntity(this.devices,
		this.properties,
		this.value,
		this.option,
		this.toggle);
		factory ThenEntity.fromJson(Map<String, dynamic> json) =>
      _$ThenEntityFromJson(json);
		Map<String, dynamic> toJson() => _$ThenEntityToJson(this);

	ThenEntity copyWith({DevicesEntity? devices,
		PropertiesEntity? properties,
		String? value,
		String? option,
		int? toggle}) => 
	ThenEntity(devices ?? this.devices,
		properties ?? this.properties,
		value ?? this.value,
		option ?? this.option,
		toggle ?? this.toggle);
	Then mapToDomain() =>
 Then(this.devices?.mapToDomain(), this.properties?.mapToDomain(), this.value, this.option, this.toggle);
	factory ThenEntity.mapFromDomain(Then? domain) =>
 ThenEntity(DevicesEntity.mapFromDomain(domain?.devices), PropertiesEntity.mapFromDomain(domain?.properties), domain?.value, domain?.option, domain?.toggle);
}