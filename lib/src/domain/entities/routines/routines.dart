import 'package:smart_ix/src/core/utils/constants.dart';
import 'package:smart_ix/src/domain/entities/routines/owner.dart';
import 'package:floor/floor.dart';

import '../../../data/datasources/local/converters/routines_type_converter.dart';


// @Entity(tableName:kArticlesTableName)
class Routines {
	// @PrimaryKey(autoGenerate: true)
  final int id;
	final Owner owner;

	Routines(this.id,
		this.owner);

	Routines.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		owner = Owner.fromJson(map['owner']);

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['owner'] = owner?.toJson();
		return _$data;
	}

	Routines copyWith({int? id,
		Owner? owner}) => 
	Routines(id ?? this.id,
		owner ?? this.owner);
}