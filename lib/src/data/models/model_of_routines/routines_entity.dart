import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/data/models/model_of_routines/owner_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/owner_routine.dart';
part 'routines_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RoutinesEntity {

  final int? id;
  final String? name;
  final OwnerEntity? owner;

	RoutinesEntity(this.id,
		this.name,
		this.owner);
		factory RoutinesEntity.fromJson(Map<String, dynamic> json) =>
      _$RoutinesEntityFromJson(json);
		Map<String, dynamic> toJson() => _$RoutinesEntityToJson(this);

	RoutinesEntity copyWith({int? id,
		String? name,
		OwnerEntity? owner}) => 
	RoutinesEntity(id ?? this.id,
		name ?? this.name,
		owner ?? this.owner);
	Routines mapToDomain() =>
 Routines(this.id!, this.name!, this.owner!.mapToDomain());
	factory RoutinesEntity.mapFromDomain(Routines? domain) =>
 RoutinesEntity(domain?.id, domain?.name, OwnerEntity.mapFromDomain(domain?.owner));
}