import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';

class Owner {

  final String? userId;
  final List<When>? when;
  final List<Then>? then;

	Owner(this.userId,
		this.when,
		this.then);

	Owner.fromJson(Map<String, dynamic> map): 
		userId = map['user_id'],
		when = List<When>.from(map['when'].map((it) => When.fromJson(it))),
		then = List<Then>.from(map['then'].map((it) => Then.fromJson(it)));

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['user_id'] = userId;
		_$data['when'] = when != null ? 
			when!.map((v) => v.toJson()).toList()
			: null;
		_$data['then'] = then != null ? 
			then!.map((v) => v.toJson()).toList()
			: null;
		return _$data;
	}

	Owner copyWith({String? userId,
		List<When>? when,
		List<Then>? then}) => 
	Owner(userId ?? this.userId,
		when ?? this.when,
		then ?? this.then);
}