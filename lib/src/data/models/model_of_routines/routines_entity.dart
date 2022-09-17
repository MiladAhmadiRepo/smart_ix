import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/data/models/model_of_routines/owner_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/owner.dart';
part 'routines_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RoutinesEntity {

  final int? id;
  final OwnerEntity? owner;

	RoutinesEntity(this.id,
		this.owner);
		factory RoutinesEntity.fromJson(Map<String, dynamic> json) =>
      _$RoutinesEntityFromJson(json);
		Map<String, dynamic> toJson() => _$RoutinesEntityToJson(this);

	RoutinesEntity copyWith({int? id,
		OwnerEntity? owner}) => 
	RoutinesEntity(id ?? this.id,
		owner ?? this.owner);
	Routines mapToDomain() =>
 Routines(this.id!, this.owner!.mapToDomain());
	factory RoutinesEntity.mapFromDomain(Routines? domain) =>
 RoutinesEntity(domain?.id, OwnerEntity.mapFromDomain(domain?.owner));
}