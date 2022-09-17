import 'package:smart_ix/src/domain/entities/routines/device.dart';

class When {

  final Device? device;

	When(this.device);

	When.fromJson(Map<String, dynamic> map): 
		device = Device.fromJson(map['device']);

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['device'] = device?.toJson();
		return _$data;
	}

	When copyWith({Device? device}) => 
	When(device ?? this.device);
}