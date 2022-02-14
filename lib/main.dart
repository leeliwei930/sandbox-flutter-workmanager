import 'package:battery_plus/battery_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sandbox/pages/home.dart';
import 'package:sandbox/service/crawler_service.dart';
import 'package:workmanager/workmanager.dart';

final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case 'fireNotification':
        const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
            'your channel id', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
        const NotificationDetails platformChannelSpecifics =
            NotificationDetails(android: androidPlatformChannelSpecifics);
        await notificationsPlugin.show(0, 'plain title', 'plain body', platformChannelSpecifics, payload: 'item x');
        return Future.value(true);
      case 'deviceInfoNotificationStat':
        const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
            'device-info-channel', 'Device Info',
            channelDescription: 'Device info notification',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
        const NotificationDetails platformChannelSpecifics =
            NotificationDetails(android: androidPlatformChannelSpecifics);
        await notificationsPlugin.show(
          0,
          'Device Info',
          inputData!['device_info'],
          platformChannelSpecifics,
          payload: 'item x',
        );
        return Future.value(true);
      default:
        return Future.value(false);
    }
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitializationSettings notificationInitSettings = const InitializationSettings(
    android: AndroidInitializationSettings('app_icon'),
  );
  await notificationsPlugin.initialize(notificationInitSettings);
  Workmanager().initialize(
    callbackDispatcher, // The top level function, aka callbackDispatcher
    isInDebugMode: true,
  );
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
