import 'package:asatic_dashboard/src/core/router/router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wifi_iot/wifi_iot.dart' show NetworkSecurity, WiFiForIoTPlugin;

///
class DetailPage extends StatelessWidget {
  ///
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await WiFiForIoTPlugin.registerWifiNetwork('SH')
                .whenComplete(() async {
              await WiFiForIoTPlugin.connect(
                'Hadi',
                password: 'H@di3918',
                joinOnce: false,
                withInternet: true,
                security: NetworkSecurity.WPA,
              );
            });
            await Dio()
                .get<dynamic>('https://jsonplaceholder.typicode.com/todos/1');
          },
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              AppRouter().router.pop<bool>(false);
            },
            child: const Text('Details Page'),
          ),
        ),
      ),
    );
  }
}
