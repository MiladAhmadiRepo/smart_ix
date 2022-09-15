import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_ix/src/domain/entities/weathers.dart';

part 'model_of_weather.freezed.dart';
part 'model_of_weather.g.dart';
//------------------------------------------------------------------------------------

@freezed
class ModelOfWeathers with _$ModelOfWeathers implements Weathers {
  const factory ModelOfWeathers({
    required String userId,
    required List<dynamic> devices,
    required List<ModelOfService> services,
  }) = _ModelOfWeathers;

  factory ModelOfWeathers.fromJson(Map<String, dynamic> json) => _$ModelOfWeathersFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfService with _$ModelOfService implements Service  {
  const factory ModelOfService({
    required String id,
    required String name,
    @Default('') String companyName,
    @Default('') String apiVersion,
    @Default(false) bool activityState,
    required ModelOfWeather weather,
  }) = _ModelOfService;

  factory ModelOfService.fromJson(Map<String, dynamic> json) => _$ModelOfServiceFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfWeather with _$ModelOfWeather implements Weather{
  const factory ModelOfWeather({
    required ModelOfLocation location,
    required  ModelOfCurrent current,
  }) = _ModelOfWeather;

  factory ModelOfWeather.fromJson(Map<String, dynamic> json) => _$ModelOfWeatherFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfCurrent with _$ModelOfCurrent implements Current{
  const factory ModelOfCurrent({
    required String lastUpdated,
    required int tempC,
    required int tempF,
    required int windDegree,
    @Default('') String windDir,
  }) = _ModelOfCurrent;

  factory ModelOfCurrent.fromJson(Map<String, dynamic> json) => _$ModelOfCurrentFromJson(json);
}
//------------------------------------------------------------------------------------
@freezed
class ModelOfLocation with _$ModelOfLocation implements Location{
  const factory ModelOfLocation({
    @Default('') String name,
    @Default('') String country,
  }) = _ModelOfLocation;

  factory ModelOfLocation.fromJson(Map<String, dynamic> json) => _$ModelOfLocationFromJson(json);
}
//------------------------------------------------------------------------------------
