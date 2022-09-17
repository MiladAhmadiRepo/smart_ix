import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/data/models/model_of_routines/device_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/device.dart';
part 'when_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WhenEntity {

  final DeviceEntity? device;

	WhenEntity(this.device);
		factory WhenEntity.fromJson(Map<String, dynamic> json) =>
      _$WhenEntityFromJson(json);
		Map<String, dynamic> toJson() => _$WhenEntityToJson(this);

	WhenEntity copyWith({DeviceEntity? device}) => 
	WhenEntity(device ?? this.device);
	When mapToDomain() =>
 When(this.device?.mapToDomain());
	factory WhenEntity.mapFromDomain(When? domain) =>
 WhenEntity(DeviceEntity.mapFromDomain(domain?.device));
}