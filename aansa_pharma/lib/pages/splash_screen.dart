import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        context.goNamed('onboard');
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //0xff is the prefix of every hex colour
      //now replacing it with a hex color #AAC4FF
      //we remove the # from the hex color
      backgroundColor: Color(0xffAAC4FF),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aansa',
              textScaleFactor: 1.8,
              style: TextStyle(
                fontFeatures: [FontFeature.enable('onum')],
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.asset('image/logo.png', cacheHeight: 90),
            Text(
              'Phaarma',
              textScaleFactor: 1.8,
              style: TextStyle(
                fontFeatures: [FontFeature.enable('onum')],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
