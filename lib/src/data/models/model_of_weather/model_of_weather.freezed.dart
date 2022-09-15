// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_of_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelOfWeathers _$ModelOfWeathersFromJson(Map<String, dynamic> json) {
  return _ModelOfWeathers.fromJson(json);
}

/// @nodoc
mixin _$ModelOfWeathers {
  String get userId => throw _privateConstructorUsedError;
  List<dynamic> get devices => throw _privateConstructorUsedError;
  List<ModelOfService> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfWeathersCopyWith<ModelOfWeathers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfWeathersCopyWith<$Res> {
  factory $ModelOfWeathersCopyWith(
          ModelOfWeathers value, $Res Function(ModelOfWeathers) then) =
      _$ModelOfWeathersCopyWithImpl<$Res>;
  $Res call(
      {String userId, List<dynamic> devices, List<ModelOfService> services});
}

/// @nodoc
class _$ModelOfWeathersCopyWithImpl<$Res>
    implements $ModelOfWeathersCopyWith<$Res> {
  _$ModelOfWeathersCopyWithImpl(this._value, this._then);

  final ModelOfWeathers _value;
  // ignore: unused_field
  final $Res Function(ModelOfWeathers) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? devices = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ModelOfService>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfWeathersCopyWith<$Res>
    implements $ModelOfWeathersCopyWith<$Res> {
  factory _$$_ModelOfWeathersCopyWith(
          _$_ModelOfWeathers value, $Res Function(_$_ModelOfWeathers) then) =
      __$$_ModelOfWeathersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId, List<dynamic> devices, List<ModelOfService> services});
}

/// @nodoc
class __$$_ModelOfWeathersCopyWithImpl<$Res>
    extends _$ModelOfWeathersCopyWithImpl<$Res>
    implements _$$_ModelOfWeathersCopyWith<$Res> {
  __$$_ModelOfWeathersCopyWithImpl(
      _$_ModelOfWeathers _value, $Res Function(_$_ModelOfWeathers) _then)
      : super(_value, (v) => _then(v as _$_ModelOfWeathers));

  @override
  _$_ModelOfWeathers get _value => super._value as _$_ModelOfWeathers;

  @override
  $Res call({
    Object? userId = freezed,
    Object? devices = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_ModelOfWeathers(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ModelOfService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfWeathers implements _ModelOfWeathers {
  const _$_ModelOfWeathers(
      {required this.userId,
      required final List<dynamic> devices,
      required final List<ModelOfService> services})
      : _devices = devices,
        _services = services;

  factory _$_ModelOfWeathers.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfWeathersFromJson(json);

  @override
  final String userId;
  final List<dynamic> _devices;
  @override
  List<dynamic> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final List<ModelOfService> _services;
  @override
  List<ModelOfService> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ModelOfWeathers(userId: $userId, devices: $devices, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfWeathers &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfWeathersCopyWith<_$_ModelOfWeathers> get copyWith =>
      __$$_ModelOfWeathersCopyWithImpl<_$_ModelOfWeathers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfWeathersToJson(
      this,
    );
  }
}

abstract class _ModelOfWeathers implements ModelOfWeathers {
  const factory _ModelOfWeathers(
      {required final String userId,
      required final List<dynamic> devices,
      required final List<ModelOfService> services}) = _$_ModelOfWeathers;

  factory _ModelOfWeathers.fromJson(Map<String, dynamic> json) =
      _$_ModelOfWeathers.fromJson;

  @override
  String get userId;
  @override
  List<dynamic> get devices;
  @override
  List<ModelOfService> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfWeathersCopyWith<_$_ModelOfWeathers> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfService _$ModelOfServiceFromJson(Map<String, dynamic> json) {
  return _ModelOfService.fromJson(json);
}

/// @nodoc
mixin _$ModelOfService {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get apiVersion => throw _privateConstructorUsedError;
  bool get activityState => throw _privateConstructorUsedError;
  ModelOfWeather get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfServiceCopyWith<ModelOfService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfServiceCopyWith<$Res> {
  factory $ModelOfServiceCopyWith(
          ModelOfService value, $Res Function(ModelOfService) then) =
      _$ModelOfServiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String companyName,
      String apiVersion,
      bool activityState,
      ModelOfWeather weather});

  $ModelOfWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$ModelOfServiceCopyWithImpl<$Res>
    implements $ModelOfServiceCopyWith<$Res> {
  _$ModelOfServiceCopyWithImpl(this._value, this._then);

  final ModelOfService _value;
  // ignore: unused_field
  final $Res Function(ModelOfService) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? apiVersion = freezed,
    Object? activityState = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as ModelOfWeather,
    ));
  }

  @override
  $ModelOfWeatherCopyWith<$Res> get weather {
    return $ModelOfWeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModelOfServiceCopyWith<$Res>
    implements $ModelOfServiceCopyWith<$Res> {
  factory _$$_ModelOfServiceCopyWith(
          _$_ModelOfService value, $Res Function(_$_ModelOfService) then) =
      __$$_ModelOfServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String companyName,
      String apiVersion,
      bool activityState,
      ModelOfWeather weather});

  @override
  $ModelOfWeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_ModelOfServiceCopyWithImpl<$Res>
    extends _$ModelOfServiceCopyWithImpl<$Res>
    implements _$$_ModelOfServiceCopyWith<$Res> {
  __$$_ModelOfServiceCopyWithImpl(
      _$_ModelOfService _value, $Res Function(_$_ModelOfService) _then)
      : super(_value, (v) => _then(v as _$_ModelOfService));

  @override
  _$_ModelOfService get _value => super._value as _$_ModelOfService;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? apiVersion = freezed,
    Object? activityState = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_ModelOfService(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      apiVersion: apiVersion == freezed
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as ModelOfWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfService implements _ModelOfService {
  const _$_ModelOfService(
      {required this.id,
      required this.name,
      this.companyName = '',
      this.apiVersion = '',
      this.activityState = false,
      required this.weather});

  factory _$_ModelOfService.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final String apiVersion;
  @override
  @JsonKey()
  final bool activityState;
  @override
  final ModelOfWeather weather;

  @override
  String toString() {
    return 'ModelOfService(id: $id, name: $name, companyName: $companyName, apiVersion: $apiVersion, activityState: $activityState, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfService &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.apiVersion, apiVersion) &&
            const DeepCollectionEquality()
                .equals(other.activityState, activityState) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(apiVersion),
      const DeepCollectionEquality().hash(activityState),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfServiceCopyWith<_$_ModelOfService> get copyWith =>
      __$$_ModelOfServiceCopyWithImpl<_$_ModelOfService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfServiceToJson(
      this,
    );
  }
}

abstract class _ModelOfService implements ModelOfService {
  const factory _ModelOfService(
      {required final String id,
      required final String name,
      final String companyName,
      final String apiVersion,
      final bool activityState,
      required final ModelOfWeather weather}) = _$_ModelOfService;

  factory _ModelOfService.fromJson(Map<String, dynamic> json) =
      _$_ModelOfService.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get companyName;
  @override
  String get apiVersion;
  @override
  bool get activityState;
  @override
  ModelOfWeather get weather;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfServiceCopyWith<_$_ModelOfService> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfWeather _$ModelOfWeatherFromJson(Map<String, dynamic> json) {
  return _ModelOfWeather.fromJson(json);
}

/// @nodoc
mixin _$ModelOfWeather {
  ModelOfLocation get location => throw _privateConstructorUsedError;
  ModelOfCurrent get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfWeatherCopyWith<ModelOfWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfWeatherCopyWith<$Res> {
  factory $ModelOfWeatherCopyWith(
          ModelOfWeather value, $Res Function(ModelOfWeather) then) =
      _$ModelOfWeatherCopyWithImpl<$Res>;
  $Res call({ModelOfLocation location, ModelOfCurrent current});

  $ModelOfLocationCopyWith<$Res> get location;
  $ModelOfCurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$ModelOfWeatherCopyWithImpl<$Res>
    implements $ModelOfWeatherCopyWith<$Res> {
  _$ModelOfWeatherCopyWithImpl(this._value, this._then);

  final ModelOfWeather _value;
  // ignore: unused_field
  final $Res Function(ModelOfWeather) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ModelOfLocation,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ModelOfCurrent,
    ));
  }

  @override
  $ModelOfLocationCopyWith<$Res> get location {
    return $ModelOfLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $ModelOfCurrentCopyWith<$Res> get current {
    return $ModelOfCurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$$_ModelOfWeatherCopyWith<$Res>
    implements $ModelOfWeatherCopyWith<$Res> {
  factory _$$_ModelOfWeatherCopyWith(
          _$_ModelOfWeather value, $Res Function(_$_ModelOfWeather) then) =
      __$$_ModelOfWeatherCopyWithImpl<$Res>;
  @override
  $Res call({ModelOfLocation location, ModelOfCurrent current});

  @override
  $ModelOfLocationCopyWith<$Res> get location;
  @override
  $ModelOfCurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$_ModelOfWeatherCopyWithImpl<$Res>
    extends _$ModelOfWeatherCopyWithImpl<$Res>
    implements _$$_ModelOfWeatherCopyWith<$Res> {
  __$$_ModelOfWeatherCopyWithImpl(
      _$_ModelOfWeather _value, $Res Function(_$_ModelOfWeather) _then)
      : super(_value, (v) => _then(v as _$_ModelOfWeather));

  @override
  _$_ModelOfWeather get _value => super._value as _$_ModelOfWeather;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$_ModelOfWeather(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ModelOfLocation,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ModelOfCurrent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfWeather implements _ModelOfWeather {
  const _$_ModelOfWeather({required this.location, required this.current});

  factory _$_ModelOfWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfWeatherFromJson(json);

  @override
  final ModelOfLocation location;
  @override
  final ModelOfCurrent current;

  @override
  String toString() {
    return 'ModelOfWeather(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfWeather &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfWeatherCopyWith<_$_ModelOfWeather> get copyWith =>
      __$$_ModelOfWeatherCopyWithImpl<_$_ModelOfWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfWeatherToJson(
      this,
    );
  }
}

abstract class _ModelOfWeather implements ModelOfWeather {
  const factory _ModelOfWeather(
      {required final ModelOfLocation location,
      required final ModelOfCurrent current}) = _$_ModelOfWeather;

  factory _ModelOfWeather.fromJson(Map<String, dynamic> json) =
      _$_ModelOfWeather.fromJson;

  @override
  ModelOfLocation get location;
  @override
  ModelOfCurrent get current;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfWeatherCopyWith<_$_ModelOfWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfCurrent _$ModelOfCurrentFromJson(Map<String, dynamic> json) {
  return _ModelOfCurrent.fromJson(json);
}

/// @nodoc
mixin _$ModelOfCurrent {
  String get lastUpdated => throw _privateConstructorUsedError;
  int get tempC => throw _privateConstructorUsedError;
  int get tempF => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;
  String get windDir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfCurrentCopyWith<ModelOfCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfCurrentCopyWith<$Res> {
  factory $ModelOfCurrentCopyWith(
          ModelOfCurrent value, $Res Function(ModelOfCurrent) then) =
      _$ModelOfCurrentCopyWithImpl<$Res>;
  $Res call(
      {String lastUpdated,
      int tempC,
      int tempF,
      int windDegree,
      String windDir});
}

/// @nodoc
class _$ModelOfCurrentCopyWithImpl<$Res>
    implements $ModelOfCurrentCopyWith<$Res> {
  _$ModelOfCurrentCopyWithImpl(this._value, this._then);

  final ModelOfCurrent _value;
  // ignore: unused_field
  final $Res Function(ModelOfCurrent) _then;

  @override
  $Res call({
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: tempC == freezed
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as int,
      tempF: tempF == freezed
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfCurrentCopyWith<$Res>
    implements $ModelOfCurrentCopyWith<$Res> {
  factory _$$_ModelOfCurrentCopyWith(
          _$_ModelOfCurrent value, $Res Function(_$_ModelOfCurrent) then) =
      __$$_ModelOfCurrentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lastUpdated,
      int tempC,
      int tempF,
      int windDegree,
      String windDir});
}

/// @nodoc
class __$$_ModelOfCurrentCopyWithImpl<$Res>
    extends _$ModelOfCurrentCopyWithImpl<$Res>
    implements _$$_ModelOfCurrentCopyWith<$Res> {
  __$$_ModelOfCurrentCopyWithImpl(
      _$_ModelOfCurrent _value, $Res Function(_$_ModelOfCurrent) _then)
      : super(_value, (v) => _then(v as _$_ModelOfCurrent));

  @override
  _$_ModelOfCurrent get _value => super._value as _$_ModelOfCurrent;

  @override
  $Res call({
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
  }) {
    return _then(_$_ModelOfCurrent(
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: tempC == freezed
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as int,
      tempF: tempF == freezed
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as int,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfCurrent implements _ModelOfCurrent {
  const _$_ModelOfCurrent(
      {required this.lastUpdated,
      required this.tempC,
      required this.tempF,
      required this.windDegree,
      this.windDir = ''});

  factory _$_ModelOfCurrent.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfCurrentFromJson(json);

  @override
  final String lastUpdated;
  @override
  final int tempC;
  @override
  final int tempF;
  @override
  final int windDegree;
  @override
  @JsonKey()
  final String windDir;

  @override
  String toString() {
    return 'ModelOfCurrent(lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, windDegree: $windDegree, windDir: $windDir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfCurrent &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.tempC, tempC) &&
            const DeepCollectionEquality().equals(other.tempF, tempF) &&
            const DeepCollectionEquality()
                .equals(other.windDegree, windDegree) &&
            const DeepCollectionEquality().equals(other.windDir, windDir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(tempC),
      const DeepCollectionEquality().hash(tempF),
      const DeepCollectionEquality().hash(windDegree),
      const DeepCollectionEquality().hash(windDir));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfCurrentCopyWith<_$_ModelOfCurrent> get copyWith =>
      __$$_ModelOfCurrentCopyWithImpl<_$_ModelOfCurrent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfCurrentToJson(
      this,
    );
  }
}

abstract class _ModelOfCurrent implements ModelOfCurrent {
  const factory _ModelOfCurrent(
      {required final String lastUpdated,
      required final int tempC,
      required final int tempF,
      required final int windDegree,
      final String windDir}) = _$_ModelOfCurrent;

  factory _ModelOfCurrent.fromJson(Map<String, dynamic> json) =
      _$_ModelOfCurrent.fromJson;

  @override
  String get lastUpdated;
  @override
  int get tempC;
  @override
  int get tempF;
  @override
  int get windDegree;
  @override
  String get windDir;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfCurrentCopyWith<_$_ModelOfCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfLocation _$ModelOfLocationFromJson(Map<String, dynamic> json) {
  return _ModelOfLocation.fromJson(json);
}

/// @nodoc
mixin _$ModelOfLocation {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfLocationCopyWith<ModelOfLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfLocationCopyWith<$Res> {
  factory $ModelOfLocationCopyWith(
          ModelOfLocation value, $Res Function(ModelOfLocation) then) =
      _$ModelOfLocationCopyWithImpl<$Res>;
  $Res call({String name, String country});
}

/// @nodoc
class _$ModelOfLocationCopyWithImpl<$Res>
    implements $ModelOfLocationCopyWith<$Res> {
  _$ModelOfLocationCopyWithImpl(this._value, this._then);

  final ModelOfLocation _value;
  // ignore: unused_field
  final $Res Function(ModelOfLocation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfLocationCopyWith<$Res>
    implements $ModelOfLocationCopyWith<$Res> {
  factory _$$_ModelOfLocationCopyWith(
          _$_ModelOfLocation value, $Res Function(_$_ModelOfLocation) then) =
      __$$_ModelOfLocationCopyWithImpl<$Res>;
  @override
  $Res call({String name, String country});
}

/// @nodoc
class __$$_ModelOfLocationCopyWithImpl<$Res>
    extends _$ModelOfLocationCopyWithImpl<$Res>
    implements _$$_ModelOfLocationCopyWith<$Res> {
  __$$_ModelOfLocationCopyWithImpl(
      _$_ModelOfLocation _value, $Res Function(_$_ModelOfLocation) _then)
      : super(_value, (v) => _then(v as _$_ModelOfLocation));

  @override
  _$_ModelOfLocation get _value => super._value as _$_ModelOfLocation;

  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_ModelOfLocation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfLocation implements _ModelOfLocation {
  const _$_ModelOfLocation({this.name = '', this.country = ''});

  factory _$_ModelOfLocation.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfLocationFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String country;

  @override
  String toString() {
    return 'ModelOfLocation(name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfLocation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfLocationCopyWith<_$_ModelOfLocation> get copyWith =>
      __$$_ModelOfLocationCopyWithImpl<_$_ModelOfLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfLocationToJson(
      this,
    );
  }
}

abstract class _ModelOfLocation implements ModelOfLocation {
  const factory _ModelOfLocation({final String name, final String country}) =
      _$_ModelOfLocation;

  factory _ModelOfLocation.fromJson(Map<String, dynamic> json) =
      _$_ModelOfLocation.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfLocationCopyWith<_$_ModelOfLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
