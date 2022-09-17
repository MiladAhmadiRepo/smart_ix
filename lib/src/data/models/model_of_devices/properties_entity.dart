import 'package:json_annotation/json_annotation.dart';
import 'package:smart_ix/src/domain/entities/devices/properties.dart';

part 'properties_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PropertiesEntity {
  final String? id;
  final String? name;
  final String? typeOfValue;
  final String? currentValue;
  final List<Object>? rang;
  final String? minValue;
  final String? maxValue;

  PropertiesEntity(this.id, this.name, this.typeOfValue, this.currentValue, this.rang,
      this.minValue, this.maxValue);

  factory PropertiesEntity.fromJson(Map<String, dynamic> json) => _$PropertiesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesEntityToJson(this);

  PropertiesEntity copyWith(
          {String? id,
          String? name,
          String? typeOfValue,
          String? currentValue,
          List<Object>? rang,
          String? minValue,
          String? maxValue}) =>
      PropertiesEntity(
          id ?? this.id,
          name ?? this.name,
          typeOfValue ?? this.typeOfValue,
          currentValue ?? this.currentValue,
          rang ?? this.rang,
          minValue ?? this.minValue,
          maxValue ?? this.maxValue);

  Properties mapToDomain() => Properties(this.id, this.name, this.typeOfValue, this.currentValue,
      this.rang, this.minValue, this.maxValue);

  factory PropertiesEntity.mapFromDomain(Properties? domain) => PropertiesEntity(
      domain?.id,
      domain?.name,
      domain?.typeOfValue,
      domain?.currentValue,
      domain?.rang,
      domain?.minValue,
      domain?.maxValue);
}
