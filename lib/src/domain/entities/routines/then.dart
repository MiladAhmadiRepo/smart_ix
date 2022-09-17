import 'package:smart_ix/src/domain/entities/routines/device.dart';

class Then {

  final List<Device>? device;

	Then(this.device);

	Then.fromJson(Map<String, dynamic> map): 
		device = List<Device>.from(map['device'].map((it) => Device.fromJson(it)));

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['device'] = device != null ? 
			device!.map((v) => v.toJson()).toList()
			: null;
		return _$data;
	}

	Then copyWith({List<Device>? device}) => 
	Then(device ?? this.device);
}