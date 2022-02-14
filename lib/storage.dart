import 'package:flutter/services.dart';

class Storage {
  static const MethodChannel _methodChannel =
      MethodChannel('com.sandbox.example/storage');
  static final Storage _storage = Storage._();
  factory Storage() => _storage;
  const Storage._();

  static Future<List<String>> getAvailableExternalStorage() async {
    List<Object?> _nativePaths =
        await _methodChannel.invokeMethod('getAvailableExternalStoragePaths');
    List<String> _paths = <String>[];

    for (Object? path in _nativePaths) {
      if (path != null) {
        _paths.add(path as String);
      }
    }
    return _paths;
  }

  static Future<double> getPhysicalStorageCapacity() async {
    double? capacity =
        await _methodChannel.invokeMethod('getPhysicalStorageCapacity');

    return Future.value(capacity);
  }
}
