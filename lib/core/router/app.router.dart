import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yozil_business/presentation/presentation.dart';

abstract class ScreenPath {
  static const String initialRoute = '/';
  static const String splash = '/splash';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String verifyPhone = '/verify_phone';
  static const String appointments = '/appointments';
  static const String schedule = '/schedule';
  static const String control = '/control';
  static const String settings = '/settings';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
//final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter() {
    goRouter = GoRouter(
      //initialLocation: ScreenPath.splash,
      initialLocation: ScreenPath.appointments,
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      routes: _routes,
    );
  }

  late GoRouter goRouter;

  final List<RouteBase> _routes = [
    GoRoute(
      path: ScreenPath.splash,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SplashPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),

    GoRoute(
      path: ScreenPath.signIn,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SignInPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: ScreenPath.signUp,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SignUpPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: ScreenPath.verifyPhone,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const PhoneVerificationPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: ScreenPath.appointments,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const AppointmentsPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    //explore
    GoRoute(
      path: ScreenPath.schedule,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SchedulePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: ScreenPath.control,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const ControlPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: ScreenPath.settings,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
  ];
}
