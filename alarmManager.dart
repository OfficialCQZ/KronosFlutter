import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager
{
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();


  void initNotificationManager()
  {
    AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('app_icon');
    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showNotificationWithDefaultSound(String title, String body)
  {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails('torchg6kronos', 'Kronos');
    var platformChannelSpecifics = NotificationDetails();
    flutterLocalNotificationsPlugin.show(0, title, body, platformChannelSpecifics);
  }
}