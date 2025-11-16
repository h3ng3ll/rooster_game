import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';

@pragma('vm:entry-point')
void notificationTopBackground(NotificationResponse notificationResponse) {
  LocalNotificationService.instance.receiveNotificationResponse(
    notificationResponse,
  );
}

class LocalNotificationService {
  static final instance = LocalNotificationService._();
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  LocalNotificationService._();

  Future<void> init() async {
    await _checkPermissions();

    final AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings(
          '@mipmap/ic_launcher',
        );
    final DarwinInitializationSettings darwinInitializationSettings =
        DarwinInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
          android: androidInitializationSettings,
          iOS: darwinInitializationSettings,
        );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: receiveNotificationResponse,
      onDidReceiveBackgroundNotificationResponse: notificationTopBackground,
    );
    _registerNotifications();
  }

  Future<void> _checkPermissions() async {
    if (Platform.isAndroid) {
      final androidImpl = _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();

      await androidImpl?.requestFullScreenIntentPermission();
      await androidImpl?.requestNotificationsPermission();
    } else if (Platform.isIOS) {
      final iosImpl = _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();

      await iosImpl?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  void _registerNotifications() {
    AndroidNotificationDetails(
      'game-notification',
      'game-notification',
      actions: [],
    );
  }


  Future<String> copyAssetToTemp(String assetPath, String filename) async {
    final byteData = await rootBundle.load(assetPath);

    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/$filename');

    await file.writeAsBytes(byteData.buffer.asUint8List());

    return file.path;
  }

  Future<void> receiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {}

  Future<void> sendNotification(
    String title,
    String body, {
    String? icon,
    dynamic payload,
  }) async {

    String? largeIconPath = icon ?? await copyAssetToTemp('assets/images/ic_launcher.png', 'notif_icon.png');

    final androidNotificationDetails = AndroidNotificationDetails(
      'game-notification',
      'game-notification',
      actions: [],
      priority: Priority.high,
      largeIcon: largeIconPath != null
          ? FilePathAndroidBitmap(
              largeIconPath,
            )
          : null,
    );

    final darwinNotificationDetails = DarwinNotificationDetails(
      attachments: largeIconPath != null
          ? [
              DarwinNotificationAttachment(
                largeIconPath,
              ),
            ]
          : [],
    );

    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    final payloadData = payload != null ? jsonEncode(payload?.toJson()) : null;

    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      notificationDetails,
      payload: payloadData,
    );
  }
}
