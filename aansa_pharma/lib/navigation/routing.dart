import 'package:aasma_pharma/pages/onboarding_screen.dart';
import 'package:aasma_pharma/pages/splash_screen.dart';
import 'package:aasma_pharma/pages/todo_app.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _parentNavigatorkey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _parentNavigatorkey,
  initialLocation: '/splash',

  routes: [
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => SplashScreen(),
      routes: [
        GoRoute(
          path: '/onboard',
          name: 'onboard',
          builder: (context, state) => OnboardingScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/todo',
      name: 'todo',
      builder: (context, state) => TodoApp(),
    ),
  ],
);
