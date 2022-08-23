import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SecondScreen(this.message);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: const Text('Return'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
