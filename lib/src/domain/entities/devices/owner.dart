import 'package:smart_ix/src/domain/entities/devices/devices.dart';

class Owner {

  final String? userId;
  final List<Devices>? devices;
  final List<Object>? services;

	Owner(this.userId,
		this.devices,
		this.services);

	Owner.fromJson(Map<String, dynamic> map): 
		userId = map['user_id'],
		devices = List<Devices>.from(map['devices'].map((it) => Devices.fromJson(it))),
		services = map['services'];

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['user_id'] = userId;
		_$data['devices'] = devices != null ? 
			devices!.map((v) => v.toJson()).toList()
			: null;
		_$data['services'] = services;
		return _$data;
	}

	Owner copyWith({String? userId,
		List<Devices>? devices,
		List<Object>? services}) => 
	Owner(userId ?? this.userId,
		devices ?? this.devices,
		services ?? this.services);
}