import 'dart:io';

import 'package:battery_plus/battery_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sandbox/models/crawl_identifier.dart';
import 'package:storage_info/storage_info.dart';
import 'package:path_provider/path_provider.dart';

class CrawlerService {
  final DeviceInfoPlugin deviceInfo;
  final Battery battery;
  CrawlerService({required this.deviceInfo, required this.battery});

  DeviceScreenSize getDeviceScreenSize() {
    return DeviceScreenSize(
      height: WidgetsBinding.instance!.window.physicalSize.height.toInt(),
      width: WidgetsBinding.instance!.window.physicalSize.width.toInt(),
    );
  }

  Future<void> requestLocationPermission() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      return;
    }

    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return;
      }
    }
  }

  Future<DeviceLocation?> getDeviceLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      return null;
    }

    LocationPermission locationPermission = await Geolocator.checkPermission();
    if ([LocationPermission.whileInUse, LocationPermission.always].contains(locationPermission)) {
      Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );
      return Future<DeviceLocation>.value(DeviceLocation(
        longitude: currentPosition.longitude,
        latitude: currentPosition.latitude,
      ));
    }
  }

  Future<double> getInternalStorageCapacity() async {
    return StorageInfo.getStorageTotalSpaceInGB;
  }

  Future<double?> getExternalStorageCapacity() async {
    List<Directory>? _externalDirectories = await getExternalStorageDirectories();
    if (_externalDirectories != null) {
      _externalDirectories.removeWhere((Directory dir) => dir.path.contains('/storage/emulated'));
      if (_externalDirectories.isNotEmpty) {
        return StorageInfo.getExternalStorageTotalSpaceInGB;
      }
    }
  }

  Future<CrawledIdentifier> getCrawlInfo() async {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    DeviceLocation? deviceLocation = await getDeviceLocation();

    int currentBatteryLevel = await battery.batteryLevel;

    CrawledIdentifier crawlInfo = CrawledIdentifier(
      model: androidInfo.model ?? 'unkown',
      manufacture: androidInfo.manufacturer ?? 'unknown',
      screen: getDeviceScreenSize(),
      internalStorageCapacity: await getInternalStorageCapacity(),
      externalStorageCapacity: await getExternalStorageCapacity(),
      androidVersion: androidInfo.version.release ?? 'unknown',
      deviceLocation: deviceLocation,
      batteryLevel: currentBatteryLevel,
      androidId: androidInfo.androidId ?? 'unknown',
      deviceName: androidInfo.device ?? 'unknown',
      board: androidInfo.board ?? 'unknown',
    );

    return Future.value(crawlInfo);
  }
}
