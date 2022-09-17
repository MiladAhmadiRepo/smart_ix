import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/owner.dart';
import 'package:smart_ix/src/data/models/model_of_routines/when_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/data/models/model_of_routines/then_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';
part 'owner_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OwnerEntity {

  final String? userId;
  final List<WhenEntity>? when;
  final List<ThenEntity>? then;

	OwnerEntity(this.userId,
		this.when,
		this.then);
		factory OwnerEntity.fromJson(Map<String, dynamic> json) =>
      _$OwnerEntityFromJson(json);
		Map<String, dynamic> toJson() => _$OwnerEntityToJson(this);

	OwnerEntity copyWith({String? userId,
		List<WhenEntity>? when,
		List<ThenEntity>? then}) => 
	OwnerEntity(userId ?? this.userId,
		when ?? this.when,
		then ?? this.then);
	Owner mapToDomain() =>
 Owner(this.userId, this.when?.map((ele) => ele.mapToDomain())
.toList(), this.then?.map((ele) => ele.mapToDomain())
.toList());
	factory OwnerEntity.mapFromDomain(Owner? domain) =>
 OwnerEntity(domain?.userId, domain?.when?.map((ele) => WhenEntity.mapFromDomain(ele))
.toList(), domain?.then?.map((ele) => ThenEntity.mapFromDomain(ele))
.toList());
}