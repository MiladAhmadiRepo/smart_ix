
import '../devices/devices.dart';
import '../devices/properties.dart';

class Then {

  final Devices? devices;
  final Properties? properties;
  final String? value;
  final String? option;
  final int? toggle;

	Then(this.devices,
		this.properties,
		this.value,
		this.option,
		this.toggle);

	Then.fromJson(Map<String, dynamic> map): 
		devices = Devices.fromJson(map['devices']),
		properties = Properties.fromJson(map['properties']),
		value = map['value'],
		option = map['option'],
		toggle = map['toggle'];

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['devices'] = devices?.toJson();
		_$data['properties'] = properties?.toJson();
		_$data['value'] = value;
		_$data['option'] = option;
		_$data['toggle'] = toggle;
		return _$data;
	}

	Then copyWith({Devices? devices,
		Properties? properties,
		String? value,
		String? option,
		int? toggle}) => 
	Then(devices ?? this.devices,
		properties ?? this.properties,
		value ?? this.value,
		option ?? this.option,
		toggle ?? this.toggle);
}