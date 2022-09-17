import 'package:smart_ix/src/domain/entities/routines/properties.dart';

class Device {

  final String? id;
  final String? name;
  final bool? activityState;
  final Properties? properties;

	Device(this.id,
		this.name,
		this.activityState,
		this.properties);

	Device.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		name = map['name'],
		activityState = map['activity_state'],
		properties = Properties.fromJson(map['properties']);

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['name'] = name;
		_$data['activity_state'] = activityState;
		_$data['properties'] = properties?.toJson();
		return _$data;
	}

	Device copyWith({String? id,
		String? name,
		bool? activityState,
		Properties? properties}) => 
	Device(id ?? this.id,
		name ?? this.name,
		activityState ?? this.activityState,
		properties ?? this.properties);
}