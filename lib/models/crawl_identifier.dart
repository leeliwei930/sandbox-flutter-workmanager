import 'package:freezed_annotation/freezed_annotation.dart';

part 'crawl_identifier.freezed.dart';
part 'crawl_identifier.g.dart';

@freezed
class CrawledIdentifier with _$CrawledIdentifier {
  @JsonSerializable()
  factory CrawledIdentifier({
    required String model,
    required String manufacture,
    required DeviceScreenSize screen,
    @JsonKey(name: 'interal_storage_capacity') required double internalStorageCapacity,
    @JsonKey(name: 'external_storage_capacity', nullable: true) double? externalStorageCapacity,
    @JsonKey(name: 'android_version') required String androidVersion,
    DeviceLocation? deviceLocation,
    required int batteryLevel,
    @JsonKey(name: 'android_id') required String androidId,
    @JsonKey(name: 'device_name') required String deviceName,
    required String board,
  }) = _CrawledIdentifier;

  factory CrawledIdentifier.fromJson(Map<String, dynamic> json) => _$CrawledIdentifierFromJson(json);
}

@freezed
class DeviceScreenSize with _$DeviceScreenSize {
  @JsonSerializable()
  factory DeviceScreenSize({required int height, required int width}) = _DeviceScreenSize;

  factory DeviceScreenSize.fromJson(Map<String, dynamic> json) => _$DeviceScreenSizeFromJson(json);
}

@freezed
class DeviceLocation with _$DeviceLocation {
  @JsonSerializable()
  factory DeviceLocation({
    required double longitude,
    required double latitude,
  }) = _DeviceLocation;

  factory DeviceLocation.fromJson(Map<String, dynamic> json) => _$DeviceLocationFromJson(json);
}
