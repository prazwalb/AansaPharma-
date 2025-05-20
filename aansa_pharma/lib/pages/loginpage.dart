import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool ispassword = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                      "Login to continue",

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
          const SizedBox(height: 10),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Fill the credentials blow,',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(color: Colors.black),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter your email address",
                      suffixIcon: IconButton(
                        onPressed: () => _emailController.clear(),
                        icon: Icon(Icons.person_3_outlined),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !ispassword,
                ),

                IconButton(
                  onPressed: () => context.goNamed('example'),
                  icon: Icon(Icons.navigate_next_sharp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
