import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(Signin());
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool ispassword = false;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffAAFFCC),

        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop,
            icon: Icon(Icons.arrow_back),
          ),
          actions: [Image.asset('image/logo.png')],
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Center(
              // heightFactor: 1.1,
              child: Text(
                'Sign in now',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Please sign in to continue to our app',
              style: TextStyle(color: Colors.grey[800]),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              height: screenheight * 0.6,
              width: screenwidth * 0.8,
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Enter your Name',
                          suffixIcon: IconButton(
                            onPressed: () => _emailController.clear(),
                            icon: Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !ispassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Enter your Password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                ispassword = !ispassword;
                              });
                            },
                            icon:
                                ispassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
