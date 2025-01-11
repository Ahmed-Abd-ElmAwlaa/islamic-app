import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'api_manager.dart';
import 'models/praying_model.dart';

class LocalNotificationService {
  static FlutterLocalNotificationsPlugin
  flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static onTap(NotificationResponse notificationResponse) {}

  static Future initialization() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  static void showDailySchduledNotification1() async {
    PrayingModel  prayingModel = await PrayingTimeService().
    getCurrentPrayTime() ;
    String fajr=prayingModel.fajr;
    var parts = fajr.split(':');
    var hour = int.parse(parts[0]) ;
    var minute = int.parse(parts[1]) ;

    const AndroidNotificationDetails android = AndroidNotificationDetails(
      'daily schduled notification',
      'id 1',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails details = const NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduleTime = tz.TZDateTime(
      tz.local,
      currentTime.year,
      currentTime.month,
      currentTime.day,
      hour,
      minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      'Daily Schduled Notification',
      'body',
      scheduleTime,
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode:AndroidScheduleMode.alarmClock ,
    );
  }

  static void showDailySchduledNotification2() async {
    PrayingModel  prayingModel = await PrayingTimeService().
    getCurrentPrayTime() ;
    String fajr=prayingModel.fajr;
    var parts = fajr.split(':');
    var hour = int.parse(parts[0]) ;
    var minute = int.parse(parts[1]) ;
    const AndroidNotificationDetails android = AndroidNotificationDetails(
      'daily schduled notification',
      'id 2',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails details = const NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduleTime = tz.TZDateTime(
      tz.local,
      currentTime.year,
      currentTime.month,
      currentTime.day,
      hour,
      minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      2,
      'Daily Schduled Notification',
      'body',
      scheduleTime,
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode:AndroidScheduleMode.alarmClock ,
    );
  }

  static void showDailySchduledNotification3() async {
    PrayingModel  prayingModel = await PrayingTimeService().
    getCurrentPrayTime() ;
    String fajr=prayingModel.fajr;
    var parts = fajr.split(':');
    var hour = int.parse(parts[0]) ;
    var minute = int.parse(parts[1]) ;
    const AndroidNotificationDetails android = AndroidNotificationDetails(
      'daily schduled notification',
      'id 3',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails details = const NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduleTime = tz.TZDateTime(
      tz.local,
      currentTime.year,
      currentTime.month,
      currentTime.day,
      hour,
      minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      3,
      'Daily Schduled Notification',
      'body',
      scheduleTime,
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode:AndroidScheduleMode.alarmClock ,
    );
  }

  static void showDailySchduledNotification4() async {
    PrayingModel  prayingModel = await PrayingTimeService().
    getCurrentPrayTime() ;
    String fajr=prayingModel.fajr;
    var parts = fajr.split(':');
    var hour = int.parse(parts[0]) ;
    var minute = int.parse(parts[1]) ;
    const AndroidNotificationDetails android = AndroidNotificationDetails(
      'daily schduled notification',
      'id 4',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails details = const NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduleTime = tz.TZDateTime(
      tz.local,
      currentTime.year,
      currentTime.month,
      currentTime.day,
      hour,
      minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      4,
      'Daily Schduled Notification',
      'body',
      scheduleTime,
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode:AndroidScheduleMode.alarmClock ,
    );
  }

  static void showDailySchduledNotification5() async {
    PrayingModel  prayingModel = await PrayingTimeService().
    getCurrentPrayTime() ;
    String fajr=prayingModel.fajr;
    var parts = fajr.split(':');
    var hour = int.parse(parts[0]) ;
    var minute = int.parse(parts[1]) ;
    const AndroidNotificationDetails android = AndroidNotificationDetails(
      'daily schduled notification',
      'id 5',
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails details = const NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Africa/Cairo'));
    var currentTime = tz.TZDateTime.now(tz.local);
    var scheduleTime = tz.TZDateTime(
      tz.local,
      currentTime.year,
      currentTime.month,
      currentTime.day,
      hour,
      minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      5,
      'Daily Schduled Notification',
      'body',
      scheduleTime,
      details,
      payload: 'zonedSchedule',
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode:AndroidScheduleMode.alarmClock ,
    );
  }

}