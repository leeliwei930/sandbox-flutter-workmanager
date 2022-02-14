import 'dart:io';

import 'package:battery_plus/battery_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sandbox/models/crawl_identifier.dart';
import 'package:sandbox/service/crawler_service.dart';
import 'package:sandbox/storage.dart';
import 'package:storage_info/storage_info.dart';
import 'package:workmanager/workmanager.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CrawlerService _service;

  @override
  void initState() {
    super.initState();
    _service = CrawlerService(battery: Battery(), deviceInfo: DeviceInfoPlugin());
    _service.requestLocationPermission();
    loadInternalStoragecapacity();
    loadExternalStorageCapacity();
  }

  Future<void> loadInternalStoragecapacity() async {
    double _space = await StorageInfo.getStorageTotalSpaceInGB;
    print("Internal storage space: $_space");
  }

  Future<void> loadExternalStorageCapacity() async {
    List<Directory>? _dir = await getExternalStorageDirectories();
    if (_dir != null) {
      _dir.removeWhere((element) => element.path.contains('/storage/emulated/'));
      if (_dir.isNotEmpty) {
        double _space = await StorageInfo.getExternalStorageTotalSpaceInGB;
        print("External storage space: $_space");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Schedule Notification in work manager'),
              onPressed: () {
                Workmanager().registerPeriodicTask(
                  '111',
                  'fireNotification',
                  backoffPolicy: BackoffPolicy.exponential,
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Cancel Schedule Notification in work manager'),
              onPressed: () {
                Workmanager().cancelByUniqueName(
                  '111',
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('fire notification'),
              onPressed: () {
                Workmanager().registerOneOffTask(
                  '2',
                  'fireNotification',
                  initialDelay: const Duration(seconds: 5),
                  backoffPolicy: BackoffPolicy.exponential,
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('storage list'),
              onPressed: () async {
                Storage.getAvailableExternalStorage().then((value) => print(value));
                Storage.getPhysicalStorageCapacity().then((value) => print(value));
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('get crawl info'),
              onPressed: () async {
                CrawledIdentifier _info = await _service.getCrawlInfo();
                Workmanager().registerOneOffTask(
                  "device_info_hash",
                  "deviceInfoNotificationStat",
                  inputData: <String, dynamic>{
                    "device_info": _info.toJson().toString(),
                  },
                  initialDelay: const Duration(seconds: 15),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
