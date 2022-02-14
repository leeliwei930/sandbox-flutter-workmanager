// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crawl_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CrawledIdentifier _$CrawledIdentifierFromJson(Map<String, dynamic> json) {
  return _CrawledIdentifier.fromJson(json);
}

/// @nodoc
class _$CrawledIdentifierTearOff {
  const _$CrawledIdentifierTearOff();

  _CrawledIdentifier call(
      {required String model,
      required String manufacture,
      required DeviceScreenSize screen,
      @JsonKey(name: 'interal_storage_capacity')
          required double internalStorageCapacity,
      @JsonKey(name: 'external_storage_capacity', nullable: true)
          double? externalStorageCapacity,
      @JsonKey(name: 'android_version')
          required String androidVersion,
      DeviceLocation? deviceLocation,
      required int batteryLevel,
      @JsonKey(name: 'android_id')
          required String androidId,
      @JsonKey(name: 'device_name')
          required String deviceName,
      required String board}) {
    return _CrawledIdentifier(
      model: model,
      manufacture: manufacture,
      screen: screen,
      internalStorageCapacity: internalStorageCapacity,
      externalStorageCapacity: externalStorageCapacity,
      androidVersion: androidVersion,
      deviceLocation: deviceLocation,
      batteryLevel: batteryLevel,
      androidId: androidId,
      deviceName: deviceName,
      board: board,
    );
  }

  CrawledIdentifier fromJson(Map<String, Object?> json) {
    return CrawledIdentifier.fromJson(json);
  }
}

/// @nodoc
const $CrawledIdentifier = _$CrawledIdentifierTearOff();

/// @nodoc
mixin _$CrawledIdentifier {
  String get model => throw _privateConstructorUsedError;
  String get manufacture => throw _privateConstructorUsedError;
  DeviceScreenSize get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'interal_storage_capacity')
  double get internalStorageCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_storage_capacity', nullable: true)
  double? get externalStorageCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'android_version')
  String get androidVersion => throw _privateConstructorUsedError;
  DeviceLocation? get deviceLocation => throw _privateConstructorUsedError;
  int get batteryLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'android_id')
  String get androidId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  String get deviceName => throw _privateConstructorUsedError;
  String get board => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrawledIdentifierCopyWith<CrawledIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrawledIdentifierCopyWith<$Res> {
  factory $CrawledIdentifierCopyWith(
          CrawledIdentifier value, $Res Function(CrawledIdentifier) then) =
      _$CrawledIdentifierCopyWithImpl<$Res>;
  $Res call(
      {String model,
      String manufacture,
      DeviceScreenSize screen,
      @JsonKey(name: 'interal_storage_capacity')
          double internalStorageCapacity,
      @JsonKey(name: 'external_storage_capacity', nullable: true)
          double? externalStorageCapacity,
      @JsonKey(name: 'android_version')
          String androidVersion,
      DeviceLocation? deviceLocation,
      int batteryLevel,
      @JsonKey(name: 'android_id')
          String androidId,
      @JsonKey(name: 'device_name')
          String deviceName,
      String board});

  $DeviceScreenSizeCopyWith<$Res> get screen;
  $DeviceLocationCopyWith<$Res>? get deviceLocation;
}

/// @nodoc
class _$CrawledIdentifierCopyWithImpl<$Res>
    implements $CrawledIdentifierCopyWith<$Res> {
  _$CrawledIdentifierCopyWithImpl(this._value, this._then);

  final CrawledIdentifier _value;
  // ignore: unused_field
  final $Res Function(CrawledIdentifier) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? manufacture = freezed,
    Object? screen = freezed,
    Object? internalStorageCapacity = freezed,
    Object? externalStorageCapacity = freezed,
    Object? androidVersion = freezed,
    Object? deviceLocation = freezed,
    Object? batteryLevel = freezed,
    Object? androidId = freezed,
    Object? deviceName = freezed,
    Object? board = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacture: manufacture == freezed
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as String,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as DeviceScreenSize,
      internalStorageCapacity: internalStorageCapacity == freezed
          ? _value.internalStorageCapacity
          : internalStorageCapacity // ignore: cast_nullable_to_non_nullable
              as double,
      externalStorageCapacity: externalStorageCapacity == freezed
          ? _value.externalStorageCapacity
          : externalStorageCapacity // ignore: cast_nullable_to_non_nullable
              as double?,
      androidVersion: androidVersion == freezed
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceLocation: deviceLocation == freezed
          ? _value.deviceLocation
          : deviceLocation // ignore: cast_nullable_to_non_nullable
              as DeviceLocation?,
      batteryLevel: batteryLevel == freezed
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      androidId: androidId == freezed
          ? _value.androidId
          : androidId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DeviceScreenSizeCopyWith<$Res> get screen {
    return $DeviceScreenSizeCopyWith<$Res>(_value.screen, (value) {
      return _then(_value.copyWith(screen: value));
    });
  }

  @override
  $DeviceLocationCopyWith<$Res>? get deviceLocation {
    if (_value.deviceLocation == null) {
      return null;
    }

    return $DeviceLocationCopyWith<$Res>(_value.deviceLocation!, (value) {
      return _then(_value.copyWith(deviceLocation: value));
    });
  }
}

/// @nodoc
abstract class _$CrawledIdentifierCopyWith<$Res>
    implements $CrawledIdentifierCopyWith<$Res> {
  factory _$CrawledIdentifierCopyWith(
          _CrawledIdentifier value, $Res Function(_CrawledIdentifier) then) =
      __$CrawledIdentifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String model,
      String manufacture,
      DeviceScreenSize screen,
      @JsonKey(name: 'interal_storage_capacity')
          double internalStorageCapacity,
      @JsonKey(name: 'external_storage_capacity', nullable: true)
          double? externalStorageCapacity,
      @JsonKey(name: 'android_version')
          String androidVersion,
      DeviceLocation? deviceLocation,
      int batteryLevel,
      @JsonKey(name: 'android_id')
          String androidId,
      @JsonKey(name: 'device_name')
          String deviceName,
      String board});

  @override
  $DeviceScreenSizeCopyWith<$Res> get screen;
  @override
  $DeviceLocationCopyWith<$Res>? get deviceLocation;
}

/// @nodoc
class __$CrawledIdentifierCopyWithImpl<$Res>
    extends _$CrawledIdentifierCopyWithImpl<$Res>
    implements _$CrawledIdentifierCopyWith<$Res> {
  __$CrawledIdentifierCopyWithImpl(
      _CrawledIdentifier _value, $Res Function(_CrawledIdentifier) _then)
      : super(_value, (v) => _then(v as _CrawledIdentifier));

  @override
  _CrawledIdentifier get _value => super._value as _CrawledIdentifier;

  @override
  $Res call({
    Object? model = freezed,
    Object? manufacture = freezed,
    Object? screen = freezed,
    Object? internalStorageCapacity = freezed,
    Object? externalStorageCapacity = freezed,
    Object? androidVersion = freezed,
    Object? deviceLocation = freezed,
    Object? batteryLevel = freezed,
    Object? androidId = freezed,
    Object? deviceName = freezed,
    Object? board = freezed,
  }) {
    return _then(_CrawledIdentifier(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacture: manufacture == freezed
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as String,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as DeviceScreenSize,
      internalStorageCapacity: internalStorageCapacity == freezed
          ? _value.internalStorageCapacity
          : internalStorageCapacity // ignore: cast_nullable_to_non_nullable
              as double,
      externalStorageCapacity: externalStorageCapacity == freezed
          ? _value.externalStorageCapacity
          : externalStorageCapacity // ignore: cast_nullable_to_non_nullable
              as double?,
      androidVersion: androidVersion == freezed
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceLocation: deviceLocation == freezed
          ? _value.deviceLocation
          : deviceLocation // ignore: cast_nullable_to_non_nullable
              as DeviceLocation?,
      batteryLevel: batteryLevel == freezed
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      androidId: androidId == freezed
          ? _value.androidId
          : androidId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CrawledIdentifier implements _CrawledIdentifier {
  _$_CrawledIdentifier(
      {required this.model,
      required this.manufacture,
      required this.screen,
      @JsonKey(name: 'interal_storage_capacity')
          required this.internalStorageCapacity,
      @JsonKey(name: 'external_storage_capacity', nullable: true)
          this.externalStorageCapacity,
      @JsonKey(name: 'android_version')
          required this.androidVersion,
      this.deviceLocation,
      required this.batteryLevel,
      @JsonKey(name: 'android_id')
          required this.androidId,
      @JsonKey(name: 'device_name')
          required this.deviceName,
      required this.board});

  factory _$_CrawledIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_CrawledIdentifierFromJson(json);

  @override
  final String model;
  @override
  final String manufacture;
  @override
  final DeviceScreenSize screen;
  @override
  @JsonKey(name: 'interal_storage_capacity')
  final double internalStorageCapacity;
  @override
  @JsonKey(name: 'external_storage_capacity', nullable: true)
  final double? externalStorageCapacity;
  @override
  @JsonKey(name: 'android_version')
  final String androidVersion;
  @override
  final DeviceLocation? deviceLocation;
  @override
  final int batteryLevel;
  @override
  @JsonKey(name: 'android_id')
  final String androidId;
  @override
  @JsonKey(name: 'device_name')
  final String deviceName;
  @override
  final String board;

  @override
  String toString() {
    return 'CrawledIdentifier(model: $model, manufacture: $manufacture, screen: $screen, internalStorageCapacity: $internalStorageCapacity, externalStorageCapacity: $externalStorageCapacity, androidVersion: $androidVersion, deviceLocation: $deviceLocation, batteryLevel: $batteryLevel, androidId: $androidId, deviceName: $deviceName, board: $board)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CrawledIdentifier &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other.manufacture, manufacture) &&
            const DeepCollectionEquality().equals(other.screen, screen) &&
            const DeepCollectionEquality().equals(
                other.internalStorageCapacity, internalStorageCapacity) &&
            const DeepCollectionEquality().equals(
                other.externalStorageCapacity, externalStorageCapacity) &&
            const DeepCollectionEquality()
                .equals(other.androidVersion, androidVersion) &&
            const DeepCollectionEquality()
                .equals(other.deviceLocation, deviceLocation) &&
            const DeepCollectionEquality()
                .equals(other.batteryLevel, batteryLevel) &&
            const DeepCollectionEquality().equals(other.androidId, androidId) &&
            const DeepCollectionEquality()
                .equals(other.deviceName, deviceName) &&
            const DeepCollectionEquality().equals(other.board, board));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(manufacture),
      const DeepCollectionEquality().hash(screen),
      const DeepCollectionEquality().hash(internalStorageCapacity),
      const DeepCollectionEquality().hash(externalStorageCapacity),
      const DeepCollectionEquality().hash(androidVersion),
      const DeepCollectionEquality().hash(deviceLocation),
      const DeepCollectionEquality().hash(batteryLevel),
      const DeepCollectionEquality().hash(androidId),
      const DeepCollectionEquality().hash(deviceName),
      const DeepCollectionEquality().hash(board));

  @JsonKey(ignore: true)
  @override
  _$CrawledIdentifierCopyWith<_CrawledIdentifier> get copyWith =>
      __$CrawledIdentifierCopyWithImpl<_CrawledIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrawledIdentifierToJson(this);
  }
}

abstract class _CrawledIdentifier implements CrawledIdentifier {
  factory _CrawledIdentifier(
      {required String model,
      required String manufacture,
      required DeviceScreenSize screen,
      @JsonKey(name: 'interal_storage_capacity')
          required double internalStorageCapacity,
      @JsonKey(name: 'external_storage_capacity', nullable: true)
          double? externalStorageCapacity,
      @JsonKey(name: 'android_version')
          required String androidVersion,
      DeviceLocation? deviceLocation,
      required int batteryLevel,
      @JsonKey(name: 'android_id')
          required String androidId,
      @JsonKey(name: 'device_name')
          required String deviceName,
      required String board}) = _$_CrawledIdentifier;

  factory _CrawledIdentifier.fromJson(Map<String, dynamic> json) =
      _$_CrawledIdentifier.fromJson;

  @override
  String get model;
  @override
  String get manufacture;
  @override
  DeviceScreenSize get screen;
  @override
  @JsonKey(name: 'interal_storage_capacity')
  double get internalStorageCapacity;
  @override
  @JsonKey(name: 'external_storage_capacity', nullable: true)
  double? get externalStorageCapacity;
  @override
  @JsonKey(name: 'android_version')
  String get androidVersion;
  @override
  DeviceLocation? get deviceLocation;
  @override
  int get batteryLevel;
  @override
  @JsonKey(name: 'android_id')
  String get androidId;
  @override
  @JsonKey(name: 'device_name')
  String get deviceName;
  @override
  String get board;
  @override
  @JsonKey(ignore: true)
  _$CrawledIdentifierCopyWith<_CrawledIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceScreenSize _$DeviceScreenSizeFromJson(Map<String, dynamic> json) {
  return _DeviceScreenSize.fromJson(json);
}

/// @nodoc
class _$DeviceScreenSizeTearOff {
  const _$DeviceScreenSizeTearOff();

  _DeviceScreenSize call({required int height, required int width}) {
    return _DeviceScreenSize(
      height: height,
      width: width,
    );
  }

  DeviceScreenSize fromJson(Map<String, Object?> json) {
    return DeviceScreenSize.fromJson(json);
  }
}

/// @nodoc
const $DeviceScreenSize = _$DeviceScreenSizeTearOff();

/// @nodoc
mixin _$DeviceScreenSize {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceScreenSizeCopyWith<DeviceScreenSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceScreenSizeCopyWith<$Res> {
  factory $DeviceScreenSizeCopyWith(
          DeviceScreenSize value, $Res Function(DeviceScreenSize) then) =
      _$DeviceScreenSizeCopyWithImpl<$Res>;
  $Res call({int height, int width});
}

/// @nodoc
class _$DeviceScreenSizeCopyWithImpl<$Res>
    implements $DeviceScreenSizeCopyWith<$Res> {
  _$DeviceScreenSizeCopyWithImpl(this._value, this._then);

  final DeviceScreenSize _value;
  // ignore: unused_field
  final $Res Function(DeviceScreenSize) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DeviceScreenSizeCopyWith<$Res>
    implements $DeviceScreenSizeCopyWith<$Res> {
  factory _$DeviceScreenSizeCopyWith(
          _DeviceScreenSize value, $Res Function(_DeviceScreenSize) then) =
      __$DeviceScreenSizeCopyWithImpl<$Res>;
  @override
  $Res call({int height, int width});
}

/// @nodoc
class __$DeviceScreenSizeCopyWithImpl<$Res>
    extends _$DeviceScreenSizeCopyWithImpl<$Res>
    implements _$DeviceScreenSizeCopyWith<$Res> {
  __$DeviceScreenSizeCopyWithImpl(
      _DeviceScreenSize _value, $Res Function(_DeviceScreenSize) _then)
      : super(_value, (v) => _then(v as _DeviceScreenSize));

  @override
  _DeviceScreenSize get _value => super._value as _DeviceScreenSize;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_DeviceScreenSize(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DeviceScreenSize implements _DeviceScreenSize {
  _$_DeviceScreenSize({required this.height, required this.width});

  factory _$_DeviceScreenSize.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceScreenSizeFromJson(json);

  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'DeviceScreenSize(height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceScreenSize &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$DeviceScreenSizeCopyWith<_DeviceScreenSize> get copyWith =>
      __$DeviceScreenSizeCopyWithImpl<_DeviceScreenSize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceScreenSizeToJson(this);
  }
}

abstract class _DeviceScreenSize implements DeviceScreenSize {
  factory _DeviceScreenSize({required int height, required int width}) =
      _$_DeviceScreenSize;

  factory _DeviceScreenSize.fromJson(Map<String, dynamic> json) =
      _$_DeviceScreenSize.fromJson;

  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$DeviceScreenSizeCopyWith<_DeviceScreenSize> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceLocation _$DeviceLocationFromJson(Map<String, dynamic> json) {
  return _DeviceLocation.fromJson(json);
}

/// @nodoc
class _$DeviceLocationTearOff {
  const _$DeviceLocationTearOff();

  _DeviceLocation call({required double longitude, required double latitude}) {
    return _DeviceLocation(
      longitude: longitude,
      latitude: latitude,
    );
  }

  DeviceLocation fromJson(Map<String, Object?> json) {
    return DeviceLocation.fromJson(json);
  }
}

/// @nodoc
const $DeviceLocation = _$DeviceLocationTearOff();

/// @nodoc
mixin _$DeviceLocation {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceLocationCopyWith<DeviceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceLocationCopyWith<$Res> {
  factory $DeviceLocationCopyWith(
          DeviceLocation value, $Res Function(DeviceLocation) then) =
      _$DeviceLocationCopyWithImpl<$Res>;
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$DeviceLocationCopyWithImpl<$Res>
    implements $DeviceLocationCopyWith<$Res> {
  _$DeviceLocationCopyWithImpl(this._value, this._then);

  final DeviceLocation _value;
  // ignore: unused_field
  final $Res Function(DeviceLocation) _then;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DeviceLocationCopyWith<$Res>
    implements $DeviceLocationCopyWith<$Res> {
  factory _$DeviceLocationCopyWith(
          _DeviceLocation value, $Res Function(_DeviceLocation) then) =
      __$DeviceLocationCopyWithImpl<$Res>;
  @override
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$DeviceLocationCopyWithImpl<$Res>
    extends _$DeviceLocationCopyWithImpl<$Res>
    implements _$DeviceLocationCopyWith<$Res> {
  __$DeviceLocationCopyWithImpl(
      _DeviceLocation _value, $Res Function(_DeviceLocation) _then)
      : super(_value, (v) => _then(v as _DeviceLocation));

  @override
  _DeviceLocation get _value => super._value as _DeviceLocation;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_DeviceLocation(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DeviceLocation implements _DeviceLocation {
  _$_DeviceLocation({required this.longitude, required this.latitude});

  factory _$_DeviceLocation.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceLocationFromJson(json);

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'DeviceLocation(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceLocation &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude));

  @JsonKey(ignore: true)
  @override
  _$DeviceLocationCopyWith<_DeviceLocation> get copyWith =>
      __$DeviceLocationCopyWithImpl<_DeviceLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceLocationToJson(this);
  }
}

abstract class _DeviceLocation implements DeviceLocation {
  factory _DeviceLocation(
      {required double longitude,
      required double latitude}) = _$_DeviceLocation;

  factory _DeviceLocation.fromJson(Map<String, dynamic> json) =
      _$_DeviceLocation.fromJson;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$DeviceLocationCopyWith<_DeviceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
