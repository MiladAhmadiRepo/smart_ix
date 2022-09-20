import 'package:floor/floor.dart';
import 'package:smart_ix/src/domain/entities/routines/owner_routine.dart';

import '../../../core/constants.dart';
@Entity(tableName:kArticlesTableName)
class Routines {
	@PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;
  final OwnerRoutine owner;

	Routines(this.id,
		this.name,
		this.owner);

	Routines.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		name = map['name'],
		owner = OwnerRoutine.fromJson(map['owner']);

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['name'] = name;
		_$data['owner'] = owner?.toJson();
		return _$data;
	}

	Routines copyWith({int? id,
		String? name,
		OwnerRoutine? owner}) =>
	Routines(id ?? this.id,
		name ?? this.name,
		owner ?? this.owner);
}