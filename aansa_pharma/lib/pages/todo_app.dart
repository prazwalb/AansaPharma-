import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  //text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  String greetMessage = '';

  void greetUser() {
    String username = myController.text;
    setState(() {
      greetMessage = "hello" + username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(greetMessage),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: ('Enter your name'),
              ),
              controller: myController,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: greetUser, child: Text('push')),
        ],
      ),
    );
  }
}
