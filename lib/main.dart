import 'package:asatic_dashboard/src/core/utils/wifi_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

///
class MyApp extends StatefulWidget {
  ///
  const MyApp({super.key});

  @override

  ///
  State<MyApp> createState() => _MyAppState();
}

///
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wifi List'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: FutureBuilder<List<WifiItem>>(
              future: WifiUtils.getWifiList(),
              builder: (
                BuildContext context,
                AsyncSnapshot<List<WifiItem>> snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () async {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text('در حال اتصال'),
                              ),
                            ),
                          );
                          await WifiUtils.connectToWifi(
                            snapshot.data?[index].ssid ?? '',
                            snapshot.data?[index].bSsid ?? '',
                            '09155813918',
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(36),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(snapshot.data?[index].toString() ?? 'SSID'),
                              const SizedBox(width: 20),
                              Text(snapshot.data?[index].bSsid ?? 'BSSID'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}
