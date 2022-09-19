import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';

class OwnerRoutine {

  final String? userId;
  final When? when;
  final Then? then;

	OwnerRoutine(this.userId,
		this.when,
		this.then);

	OwnerRoutine.fromJson(Map<String, dynamic> map):
		userId = map['user_id'],
		when = When.fromJson(map['when']),
		then = Then.fromJson(map['then']);

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['user_id'] = userId;
		_$data['when'] = when?.toJson();
		_$data['then'] = then?.toJson();
		return _$data;
	}

	OwnerRoutine copyWith({String? userId,
		When? when,
		Then? then}) =>
			OwnerRoutine(userId ?? this.userId,
		when ?? this.when,
		then ?? this.then);
}