import 'dart:convert';

import 'package:flutter/foundation.dart';
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
      debugPrint("Failed to get wifi list: '${e.message}'.");
    }
    await Future<void>.delayed(const Duration(seconds: 1));

    return list;
  }

  ///
  static Future<void> connectToWifi(
    String ssid,
    String bssid,
    String password,
  ) async {
    // Connect to wifi network.

    try {
      // Invoke the Kotlin method to connect to wifi.
      await wifiListChannel.invokeMethod('connectToWifi', {
        'ssid': ssid,
        'bssid': bssid,
        'password': password,
      }).then(
        (value) => debugPrint,
      );
    } on PlatformException catch (e) {
      debugPrint("Failed to connect: '${e.message}'.");
    } catch (e) {
      debugPrint('rifidiid $e');
    }
  }

  ///
  static const wifiListChannel = MethodChannel('samples.flutter.dev/wifi');
}

///
class WifiItem {
  ///
  const WifiItem(this.ssid, this.bSsid);

  ///
  factory WifiItem.fromJson(Map<String, dynamic> json) {
    return WifiItem(json['SSID'] as String, json['BSSID'] as String);
  }

  ///
  final String ssid;

  ///
  final String bSsid;

  ///

  @override
  String toString() {
    return ssid;
  }
}
