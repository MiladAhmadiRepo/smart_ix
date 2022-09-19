import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/data/models/model_of_routines/then_entity.dart';
import 'package:smart_ix/src/data/models/model_of_routines/when_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/owner_routine.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';
import 'package:smart_ix/src/domain/entities/routines/when.dart';

part 'owner_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OwnerEntity {

  final String? userId;
  final WhenEntity? when;
  final ThenEntity? then;

	OwnerEntity(this.userId,
		this.when,
		this.then);
		factory OwnerEntity.fromJson(Map<String, dynamic> json) =>
      _$OwnerEntityFromJson(json);
		Map<String, dynamic> toJson() => _$OwnerEntityToJson(this);

	OwnerEntity copyWith({String? userId,
		WhenEntity? when,
		ThenEntity? then}) => 
	OwnerEntity(userId ?? this.userId,
		when ?? this.when,
		then ?? this.then);
	OwnerRoutine mapToDomain() =>
			OwnerRoutine(this.userId, this.when?.mapToDomain(), this.then?.mapToDomain());
	factory OwnerEntity.mapFromDomain(OwnerRoutine? domain) =>
 OwnerEntity(domain?.userId, WhenEntity.mapFromDomain(domain?.when), ThenEntity.mapFromDomain(domain?.then));
}