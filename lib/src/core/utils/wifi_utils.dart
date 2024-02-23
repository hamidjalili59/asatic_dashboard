import 'dart:convert';

import 'package:asatic_dashboard/main.dart';
import 'package:flutter/services.dart';

///
class WifiUtils {
  ///

  static Future<List<WifiItem>> getWifiList() async {
    final list = <WifiItem>[];
    try {
      final jsonString =
          await wifiListChannel.invokeMethod<String>('getWifiList') ?? '';
      if (jsonString.isNotEmpty) {
        final wifiListJson = json.decode(jsonString) as List;
        list.addAll(
          wifiListJson.map(
            (dynamic item) {
              return WifiItem.fromJson(item as Map<String, dynamic>);
            },
          ),
        );
      }
    } on PlatformException catch (e) {
      print("Failed to get wifi list: '${e.message}'.");
    }
    await Future<void>.delayed(const Duration(seconds: 1));

    return list;
  }

  ///
  static Future<void> connectToWifi(
      String ssid, String bssid, String password) async {
    // Connect to wifi network.

    try {
      print('start');
      // Invoke the Kotlin method to connect to wifi.
      await wifiListChannel.invokeMethod('connectToWifi', {
        'ssid': ssid,
        'bssid': bssid,
        'password': password,
      }).then(print);
      print('end');
    } on PlatformException catch (e) {
      print("Failed to connect: '${e.message}'.");
    } catch (e) {
      print('rifidiid $e');
    }
  }

  ///
  static const wifiListChannel = MethodChannel('samples.flutter.dev/wifi');
}
