import 'package:smart_ix/src/domain/entities/devices/properties.dart';

class Devices {

  final String? id;
  final String? name;
  final String? manufactureName;
  final String? deviceVersion;
  final bool? activityState;
  final List<Properties>? properties;

	Devices(this.id,
		this.name,
		this.manufactureName,
		this.deviceVersion,
		this.activityState,
		this.properties);

	Devices.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		name = map['name'],
		manufactureName = map['manufacture_name'],
		deviceVersion = map['device_version'],
		activityState = map['activity_state'],
		properties = List<Properties>.from(map['properties'].map((it) => Properties.fromJson(it)));

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['name'] = name;
		_$data['manufacture_name'] = manufactureName;
		_$data['device_version'] = deviceVersion;
		_$data['activity_state'] = activityState;
		_$data['properties'] = properties != null ? 
			properties!.map((v) => v.toJson()).toList()
			: null;
		return _$data;
	}

	Devices copyWith({String? id,
		String? name,
		String? manufactureName,
		String? deviceVersion,
		bool? activityState,
		List<Properties>? properties}) => 
	Devices(id ?? this.id,
		name ?? this.name,
		manufactureName ?? this.manufactureName,
		deviceVersion ?? this.deviceVersion,
		activityState ?? this.activityState,
		properties ?? this.properties);
}