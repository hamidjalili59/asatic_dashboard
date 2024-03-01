import 'package:asatic_dashboard/src/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
class Application extends StatefulWidget {
  ///
  const Application({super.key});

  @override

  ///
  State<Application> createState() => _ApplicationState();
}

///
class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter().router,
        );
      },
    );
  }
}
