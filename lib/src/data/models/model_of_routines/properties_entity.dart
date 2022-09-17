import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/properties.dart';
part 'properties_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PropertiesEntity {

  final String? id;
  final String? name;
  final String? typeOfValue;
  final String? expectedValue;
  final bool? lessThan;
  final bool? moreThan;
  final bool? equal;

	PropertiesEntity(this.id,
		this.name,
		this.typeOfValue,
		this.expectedValue,
		this.lessThan,
		this.moreThan,
		this.equal);
		factory PropertiesEntity.fromJson(Map<String, dynamic> json) =>
      _$PropertiesEntityFromJson(json);
		Map<String, dynamic> toJson() => _$PropertiesEntityToJson(this);

	PropertiesEntity copyWith({String? id,
		String? name,
		String? typeOfValue,
		String? expectedValue,
		bool? lessThan,
		bool? moreThan,
		bool? equal}) => 
	PropertiesEntity(id ?? this.id,
		name ?? this.name,
		typeOfValue ?? this.typeOfValue,
		expectedValue ?? this.expectedValue,
		lessThan ?? this.lessThan,
		moreThan ?? this.moreThan,
		equal ?? this.equal);
	Properties mapToDomain() =>
 Properties(this.id, this.name, this.typeOfValue, this.expectedValue, this.lessThan, this.moreThan, this.equal);
	factory PropertiesEntity.mapFromDomain(Properties? domain) =>
 PropertiesEntity(domain?.id, domain?.name, domain?.typeOfValue, domain?.expectedValue, domain?.lessThan, domain?.moreThan, domain?.equal);
}