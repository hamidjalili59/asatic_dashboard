import 'package:asatic_dashboard/src/presentation/auth/pages/auth_page.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/devices_page.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/widget/new_device_dialog.dart';
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
      GoRouterMethods.routeNonTransition(
        path: '/',
        name: '/auth',
        pageBuilder: (state) => const AuthPage(),
      ),
      GoRouterMethods.routeNonTransition(
        path: '/home',
        name: '/home',
        pageBuilder: (state) => const HomePage(),
      ),
      GoRouterMethods.routeNonTransition(
        path: '/devices',
        name: '/devices',
        pageBuilder: (state) => const DevicesPage(),
        routes: [
          GoRouterMethods.routeModalFromBottom(
            name: 'newDevice',
            path: 'newDevice',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return AnimatedDialogPage(
                builder: (_) => const NewDeviceDialogWidget(),
              );
            },
          ),
        ],
      ),
    ],
  );
}

///
class GoRouterMethods {
  ///
  static GoRoute routeModalFromBottom({
    required String name,
    required String path,
    required Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
  }) =>
      GoRoute(
        path: path,
        name: name,
        pageBuilder: pageBuilder,
      );

  ///
  static GoRoute routeNonTransition({
    required String name,
    required String path,
    required Widget Function(GoRouterState state) pageBuilder,
    List<GoRoute> routes = const [],
  }) =>
      GoRoute(
        path: path,
        name: name,
        routes: routes,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: pageBuilder(state),
          key: state.pageKey,
          restorationId: state.pageKey.value,
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child,
        ),
      );
}

///
class AnimatedDialogPage<T> extends Page<T> {
  ///
  const AnimatedDialogPage({
    required this.builder,
    this.animationDuration = const Duration(milliseconds: 500),
    this.barrierColor = Colors.black38,
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
  double customCurve(double animationProgress) {
    return Curves.decelerate.transform(animationProgress);
  }

  ///
  final Duration animationDuration;

  ///
  final Color barrierColor;

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
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder<T>(
      settings: this,
      opaque: false,
      pageBuilder: (context, animation, secondaryAnimation) {
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, (1.0 - customCurve(animation.value)) * 400),
              child: Opacity(
                opacity: animation.value,
                child: child,
              ),
            );
          },
          child: builder(context),
        );
      },
      transitionDuration: animationDuration,
      fullscreenDialog: true,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
    );
  }
}
