import 'package:asatic_dashboard/src/presentation/auth/pages/auth_page.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/devices_page.dart';
import 'package:asatic_dashboard/src/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class AppRouter {
  ///
  factory AppRouter() {
    return _singleton ??= AppRouter._internal();
  }
  AppRouter._internal();
  static AppRouter? _singleton;

  ///
  GoRouter get router {
    return _router;
  }

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: '/home',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
      GoRoute(
        path: '/auth',
        name: '/auth',
        builder: (BuildContext context, GoRouterState state) =>
            const AuthPage(),
      ),
      GoRoute(
        path: '/devices',
        name: '/devices',
        builder: (BuildContext context, GoRouterState state) =>
            const DevicesPage(),
        // routes: <RouteBase>[
        //   GoRoute(
        //     path: 'license',
        //     pageBuilder: (BuildContext context, GoRouterState state) {
        //       return DialogPage(builder: (_) => const DialogHamid());
        //     },
        //   ),
        // ],
      ),
    ],
  );
}

///
class DialogHamid extends StatelessWidget {
  ///
  const DialogHamid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () async {
                // print(0000000000);
                // await WiFiForIoTPlugin.forceWifiUsage(true)
                //     .whenComplete(() async {
                //   print('1111111111111');
                //   await WiFiForIoTPlugin.registerWifiNetwork('SH')
                //       .whenComplete(() async {
                //     print('33333333');
                //     await WiFiForIoTPlugin.connect(
                //       'SH',
                //       password: '09155813918',
                //       joinOnce: false,
                //       security: NetworkSecurity.WPA,
                //     ).whenComplete(
                //       () => print('------------------------'),
                //     );
                //   });
                // });
                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(
                //     content: Text('در حال اتصال'),
                //   ),
                // );
              },
              child: Container(
                width: 500,
                height: 200,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///
class DialogPage<T> extends Page<T> {
  ///
  const DialogPage({
    required this.builder,
    this.anchorPoint,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.themes,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  ///
  final Offset? anchorPoint;

  ///
  final Color? barrierColor;

  ///
  final bool barrierDismissible;

  ///
  final String? barrierLabel;

  ///
  final bool useSafeArea;

  ///
  final CapturedThemes? themes;

  ///
  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        settings: this,
        builder: builder,
        anchorPoint: anchorPoint,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        themes: themes,
      );
}
