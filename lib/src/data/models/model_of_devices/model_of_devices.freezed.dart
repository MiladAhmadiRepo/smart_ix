// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_of_devices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelOfDevices _$ModelOfDevicesFromJson(Map<String, dynamic> json) {
  return _ModelOfDevices.fromJson(json);
}

/// @nodoc
mixin _$ModelOfDevices {
  String get userId => throw _privateConstructorUsedError;
  List<ModelOfDevice> get devices => throw _privateConstructorUsedError;
  List<dynamic> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfDevicesCopyWith<ModelOfDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfDevicesCopyWith<$Res> {
  factory $ModelOfDevicesCopyWith(
          ModelOfDevices value, $Res Function(ModelOfDevices) then) =
      _$ModelOfDevicesCopyWithImpl<$Res>;
  $Res call(
      {String userId, List<ModelOfDevice> devices, List<dynamic> services});
}

/// @nodoc
class _$ModelOfDevicesCopyWithImpl<$Res>
    implements $ModelOfDevicesCopyWith<$Res> {
  _$ModelOfDevicesCopyWithImpl(this._value, this._then);

  final ModelOfDevices _value;
  // ignore: unused_field
  final $Res Function(ModelOfDevices) _then;

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
              as List<ModelOfDevice>,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfDevicesCopyWith<$Res>
    implements $ModelOfDevicesCopyWith<$Res> {
  factory _$$_ModelOfDevicesCopyWith(
          _$_ModelOfDevices value, $Res Function(_$_ModelOfDevices) then) =
      __$$_ModelOfDevicesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId, List<ModelOfDevice> devices, List<dynamic> services});
}

/// @nodoc
class __$$_ModelOfDevicesCopyWithImpl<$Res>
    extends _$ModelOfDevicesCopyWithImpl<$Res>
    implements _$$_ModelOfDevicesCopyWith<$Res> {
  __$$_ModelOfDevicesCopyWithImpl(
      _$_ModelOfDevices _value, $Res Function(_$_ModelOfDevices) _then)
      : super(_value, (v) => _then(v as _$_ModelOfDevices));

  @override
  _$_ModelOfDevices get _value => super._value as _$_ModelOfDevices;

  @override
  $Res call({
    Object? userId = freezed,
    Object? devices = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_ModelOfDevices(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<ModelOfDevice>,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfDevices implements _ModelOfDevices {
  const _$_ModelOfDevices(
      {required this.userId,
      required final List<ModelOfDevice> devices,
      required final List<dynamic> services})
      : _devices = devices,
        _services = services;

  factory _$_ModelOfDevices.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfDevicesFromJson(json);

  @override
  final String userId;
  final List<ModelOfDevice> _devices;
  @override
  List<ModelOfDevice> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final List<dynamic> _services;
  @override
  List<dynamic> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ModelOfDevices(userId: $userId, devices: $devices, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfDevices &&
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
  _$$_ModelOfDevicesCopyWith<_$_ModelOfDevices> get copyWith =>
      __$$_ModelOfDevicesCopyWithImpl<_$_ModelOfDevices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfDevicesToJson(
      this,
    );
  }
}

abstract class _ModelOfDevices implements ModelOfDevices {
  const factory _ModelOfDevices(
      {required final String userId,
      required final List<ModelOfDevice> devices,
      required final List<dynamic> services}) = _$_ModelOfDevices;

  factory _ModelOfDevices.fromJson(Map<String, dynamic> json) =
      _$_ModelOfDevices.fromJson;

  @override
  String get userId;
  @override
  List<ModelOfDevice> get devices;
  @override
  List<dynamic> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfDevicesCopyWith<_$_ModelOfDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfDevice _$ModelOfDeviceFromJson(Map<String, dynamic> json) {
  return _ModelOfDevice.fromJson(json);
}

/// @nodoc
mixin _$ModelOfDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get manufactureName => throw _privateConstructorUsedError;
  String get deviceVersion => throw _privateConstructorUsedError;
  bool get activityState => throw _privateConstructorUsedError;
  List<ModelOfProperty> get properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfDeviceCopyWith<ModelOfDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfDeviceCopyWith<$Res> {
  factory $ModelOfDeviceCopyWith(
          ModelOfDevice value, $Res Function(ModelOfDevice) then) =
      _$ModelOfDeviceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String manufactureName,
      String deviceVersion,
      bool activityState,
      List<ModelOfProperty> properties});
}

/// @nodoc
class _$ModelOfDeviceCopyWithImpl<$Res>
    implements $ModelOfDeviceCopyWith<$Res> {
  _$ModelOfDeviceCopyWithImpl(this._value, this._then);

  final ModelOfDevice _value;
  // ignore: unused_field
  final $Res Function(ModelOfDevice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? manufactureName = freezed,
    Object? deviceVersion = freezed,
    Object? activityState = freezed,
    Object? properties = freezed,
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
      manufactureName: manufactureName == freezed
          ? _value.manufactureName
          : manufactureName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceVersion: deviceVersion == freezed
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<ModelOfProperty>,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfDeviceCopyWith<$Res>
    implements $ModelOfDeviceCopyWith<$Res> {
  factory _$$_ModelOfDeviceCopyWith(
          _$_ModelOfDevice value, $Res Function(_$_ModelOfDevice) then) =
      __$$_ModelOfDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String manufactureName,
      String deviceVersion,
      bool activityState,
      List<ModelOfProperty> properties});
}

/// @nodoc
class __$$_ModelOfDeviceCopyWithImpl<$Res>
    extends _$ModelOfDeviceCopyWithImpl<$Res>
    implements _$$_ModelOfDeviceCopyWith<$Res> {
  __$$_ModelOfDeviceCopyWithImpl(
      _$_ModelOfDevice _value, $Res Function(_$_ModelOfDevice) _then)
      : super(_value, (v) => _then(v as _$_ModelOfDevice));

  @override
  _$_ModelOfDevice get _value => super._value as _$_ModelOfDevice;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? manufactureName = freezed,
    Object? deviceVersion = freezed,
    Object? activityState = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$_ModelOfDevice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manufactureName: manufactureName == freezed
          ? _value.manufactureName
          : manufactureName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceVersion: deviceVersion == freezed
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      activityState: activityState == freezed
          ? _value.activityState
          : activityState // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: properties == freezed
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<ModelOfProperty>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfDevice implements _ModelOfDevice {
  const _$_ModelOfDevice(
      {required this.id,
      required this.name,
      this.manufactureName = '',
      this.deviceVersion = '',
      this.activityState = false,
      final List<ModelOfProperty> properties = const []})
      : _properties = properties;

  factory _$_ModelOfDevice.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfDeviceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String manufactureName;
  @override
  @JsonKey()
  final String deviceVersion;
  @override
  @JsonKey()
  final bool activityState;
  final List<ModelOfProperty> _properties;
  @override
  @JsonKey()
  List<ModelOfProperty> get properties {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  String toString() {
    return 'ModelOfDevice(id: $id, name: $name, manufactureName: $manufactureName, deviceVersion: $deviceVersion, activityState: $activityState, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfDevice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.manufactureName, manufactureName) &&
            const DeepCollectionEquality()
                .equals(other.deviceVersion, deviceVersion) &&
            const DeepCollectionEquality()
                .equals(other.activityState, activityState) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(manufactureName),
      const DeepCollectionEquality().hash(deviceVersion),
      const DeepCollectionEquality().hash(activityState),
      const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfDeviceCopyWith<_$_ModelOfDevice> get copyWith =>
      __$$_ModelOfDeviceCopyWithImpl<_$_ModelOfDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfDeviceToJson(
      this,
    );
  }
}

abstract class _ModelOfDevice implements ModelOfDevice {
  const factory _ModelOfDevice(
      {required final String id,
      required final String name,
      final String manufactureName,
      final String deviceVersion,
      final bool activityState,
      final List<ModelOfProperty> properties}) = _$_ModelOfDevice;

  factory _ModelOfDevice.fromJson(Map<String, dynamic> json) =
      _$_ModelOfDevice.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get manufactureName;
  @override
  String get deviceVersion;
  @override
  bool get activityState;
  @override
  List<ModelOfProperty> get properties;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfDeviceCopyWith<_$_ModelOfDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelOfProperty _$ModelOfPropertyFromJson(Map<String, dynamic> json) {
  return _ModelOfProperty.fromJson(json);
}

/// @nodoc
mixin _$ModelOfProperty {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get typeOfValue => throw _privateConstructorUsedError;
  String get currentValue => throw _privateConstructorUsedError;
  List<String> get rang => throw _privateConstructorUsedError;
  String get minValue => throw _privateConstructorUsedError;
  String get maxValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelOfPropertyCopyWith<ModelOfProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOfPropertyCopyWith<$Res> {
  factory $ModelOfPropertyCopyWith(
          ModelOfProperty value, $Res Function(ModelOfProperty) then) =
      _$ModelOfPropertyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String typeOfValue,
      String currentValue,
      List<String> rang,
      String minValue,
      String maxValue});
}

/// @nodoc
class _$ModelOfPropertyCopyWithImpl<$Res>
    implements $ModelOfPropertyCopyWith<$Res> {
  _$ModelOfPropertyCopyWithImpl(this._value, this._then);

  final ModelOfProperty _value;
  // ignore: unused_field
  final $Res Function(ModelOfProperty) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typeOfValue = freezed,
    Object? currentValue = freezed,
    Object? rang = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
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
      typeOfValue: typeOfValue == freezed
          ? _value.typeOfValue
          : typeOfValue // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as String,
      rang: rang == freezed
          ? _value.rang
          : rang // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ModelOfPropertyCopyWith<$Res>
    implements $ModelOfPropertyCopyWith<$Res> {
  factory _$$_ModelOfPropertyCopyWith(
          _$_ModelOfProperty value, $Res Function(_$_ModelOfProperty) then) =
      __$$_ModelOfPropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String typeOfValue,
      String currentValue,
      List<String> rang,
      String minValue,
      String maxValue});
}

/// @nodoc
class __$$_ModelOfPropertyCopyWithImpl<$Res>
    extends _$ModelOfPropertyCopyWithImpl<$Res>
    implements _$$_ModelOfPropertyCopyWith<$Res> {
  __$$_ModelOfPropertyCopyWithImpl(
      _$_ModelOfProperty _value, $Res Function(_$_ModelOfProperty) _then)
      : super(_value, (v) => _then(v as _$_ModelOfProperty));

  @override
  _$_ModelOfProperty get _value => super._value as _$_ModelOfProperty;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? typeOfValue = freezed,
    Object? currentValue = freezed,
    Object? rang = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_$_ModelOfProperty(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfValue: typeOfValue == freezed
          ? _value.typeOfValue
          : typeOfValue // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as String,
      rang: rang == freezed
          ? _value._rang
          : rang // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelOfProperty implements _ModelOfProperty {
  const _$_ModelOfProperty(
      {required this.id,
      required this.name,
      this.typeOfValue = '',
      this.currentValue = '',
      final List<String> rang = const [],
      this.minValue = '',
      this.maxValue = ''})
      : _rang = rang;

  factory _$_ModelOfProperty.fromJson(Map<String, dynamic> json) =>
      _$$_ModelOfPropertyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String typeOfValue;
  @override
  @JsonKey()
  final String currentValue;
  final List<String> _rang;
  @override
  @JsonKey()
  List<String> get rang {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rang);
  }

  @override
  @JsonKey()
  final String minValue;
  @override
  @JsonKey()
  final String maxValue;

  @override
  String toString() {
    return 'ModelOfProperty(id: $id, name: $name, typeOfValue: $typeOfValue, currentValue: $currentValue, rang: $rang, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelOfProperty &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.typeOfValue, typeOfValue) &&
            const DeepCollectionEquality()
                .equals(other.currentValue, currentValue) &&
            const DeepCollectionEquality().equals(other._rang, _rang) &&
            const DeepCollectionEquality().equals(other.minValue, minValue) &&
            const DeepCollectionEquality().equals(other.maxValue, maxValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(typeOfValue),
      const DeepCollectionEquality().hash(currentValue),
      const DeepCollectionEquality().hash(_rang),
      const DeepCollectionEquality().hash(minValue),
      const DeepCollectionEquality().hash(maxValue));

  @JsonKey(ignore: true)
  @override
  _$$_ModelOfPropertyCopyWith<_$_ModelOfProperty> get copyWith =>
      __$$_ModelOfPropertyCopyWithImpl<_$_ModelOfProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelOfPropertyToJson(
      this,
    );
  }
}

abstract class _ModelOfProperty implements ModelOfProperty {
  const factory _ModelOfProperty(
      {required final String id,
      required final String name,
      final String typeOfValue,
      final String currentValue,
      final List<String> rang,
      final String minValue,
      final String maxValue}) = _$_ModelOfProperty;

  factory _ModelOfProperty.fromJson(Map<String, dynamic> json) =
      _$_ModelOfProperty.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get typeOfValue;
  @override
  String get currentValue;
  @override
  List<String> get rang;
  @override
  String get minValue;
  @override
  String get maxValue;
  @override
  @JsonKey(ignore: true)
  _$$_ModelOfPropertyCopyWith<_$_ModelOfProperty> get copyWith =>
      throw _privateConstructorUsedError;
}
