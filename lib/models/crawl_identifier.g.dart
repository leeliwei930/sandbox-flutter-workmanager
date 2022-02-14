// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crawl_identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrawledIdentifier _$$_CrawledIdentifierFromJson(Map<String, dynamic> json) =>
    _$_CrawledIdentifier(
      model: json['model'] as String,
      manufacture: json['manufacture'] as String,
      screen: DeviceScreenSize.fromJson(json['screen'] as Map<String, dynamic>),
      internalStorageCapacity:
          (json['interal_storage_capacity'] as num).toDouble(),
      externalStorageCapacity:
          (json['external_storage_capacity'] as num?)?.toDouble(),
      androidVersion: json['android_version'] as String,
      deviceLocation: json['deviceLocation'] == null
          ? null
          : DeviceLocation.fromJson(
              json['deviceLocation'] as Map<String, dynamic>),
      batteryLevel: json['batteryLevel'] as int,
      androidId: json['android_id'] as String,
      deviceName: json['device_name'] as String,
      board: json['board'] as String,
    );

Map<String, dynamic> _$$_CrawledIdentifierToJson(
        _$_CrawledIdentifier instance) =>
    <String, dynamic>{
      'model': instance.model,
      'manufacture': instance.manufacture,
      'screen': instance.screen,
      'interal_storage_capacity': instance.internalStorageCapacity,
      'external_storage_capacity': instance.externalStorageCapacity,
      'android_version': instance.androidVersion,
      'deviceLocation': instance.deviceLocation,
      'batteryLevel': instance.batteryLevel,
      'android_id': instance.androidId,
      'device_name': instance.deviceName,
      'board': instance.board,
    };

_$_DeviceScreenSize _$$_DeviceScreenSizeFromJson(Map<String, dynamic> json) =>
    _$_DeviceScreenSize(
      height: json['height'] as int,
      width: json['width'] as int,
    );

Map<String, dynamic> _$$_DeviceScreenSizeToJson(_$_DeviceScreenSize instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
    };

_$_DeviceLocation _$$_DeviceLocationFromJson(Map<String, dynamic> json) =>
    _$_DeviceLocation(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DeviceLocationToJson(_$_DeviceLocation instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
