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
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aansa',
              style: TextStyle(
                fontFeatures: [FontFeature.enable('onum')],
                fontStyle: FontStyle.italic,
              ),
            ),
            Icon(Icons.health_and_safety_outlined),
            Text('Phaarma'),
          ],
        ),
      ),
    );
  }
}
