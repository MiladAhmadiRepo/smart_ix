import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/routines/then.dart';
import 'package:smart_ix/src/data/models/model_of_routines/device_entity.dart';
import 'package:smart_ix/src/domain/entities/routines/device.dart';
part 'then_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ThenEntity {

  final List<DeviceEntity>? device;

	ThenEntity(this.device);
		factory ThenEntity.fromJson(Map<String, dynamic> json) =>
      _$ThenEntityFromJson(json);
		Map<String, dynamic> toJson() => _$ThenEntityToJson(this);

	ThenEntity copyWith({List<DeviceEntity>? device}) => 
	ThenEntity(device ?? this.device);
	Then mapToDomain() =>
 Then(this.device?.map((ele) => ele.mapToDomain())
.toList());
	factory ThenEntity.mapFromDomain(Then? domain) =>
 ThenEntity(domain?.device?.map((ele) => DeviceEntity.mapFromDomain(ele))
.toList());
}