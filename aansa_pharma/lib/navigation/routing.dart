import 'package:aasma_pharma/pages/loginpage.dart';
import 'package:aasma_pharma/pages/onboarding_screen.dart';
import 'package:aasma_pharma/pages/signuppage.dart';
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
    ),
    GoRoute(
      path: '/onboard',
      name: 'onboard',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const Loginpage(),
      // routes: [
      //   GoRoute(
      //     path: '/forgotpass',
      //     name: 'forgotpass',
      //     // builder: (context, state) => const ForgotPassword(),
      //     routes: [
      //       GoRoute(
      //         path: '/otpverification',
      //         name: 'otpverification',
      //         // builder: (context, state) => const OtpVerificationPage(),
      //       ),
      //     ],
      //   ),
      // ],
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => const Signuppage(),
    ),
  ],
);


/** 
 * GoRoute(
      name: 'splash',
      path: '/splash',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      name: 'onboard',
      path: '/onboard',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
        path: '/signin',
        name: 'signin',
        builder: (context, state) => const Signin(),
        routes: [
          GoRoute(
              path: '/forgotpass',
              name: 'forgotpass',
              builder: (context, state) => const ForgotPassword(),
              routes: [
                GoRoute(
                  path: '/otpverification',
                  name: 'otpverification',
                  builder: (context, state) => const OtpVerificationPage(),
                )
              ]),
        ]),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => const Signup(),
    ),
 */