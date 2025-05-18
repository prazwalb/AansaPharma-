import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAAC4FF),
      extendBody: true,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back,',
                      textScaleFactor: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontFeatures: [FontFeature.enable('onum')],
                      ),
                    ),
                    Text(
                      "Logine to continue",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontFeatures: [FontFeature.enable('onum')],
                      ),
                    ),
                  ],
                ),
                Image.asset('image/logo.png', cacheHeight: 80),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            color: Colors.red,
            child: Column(children: [TextField()]),
          ),
        ],
      ),
    );
  }
}
