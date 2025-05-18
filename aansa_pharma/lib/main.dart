import 'package:aasma_pharma/navigation/routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: Color(0xffAAC4FF),

      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
