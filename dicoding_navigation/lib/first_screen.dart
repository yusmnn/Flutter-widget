import 'package:dicoding_navigation/second_screen.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String pesan = 'Hello from First Screen';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Switch Screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen(pesan)));
          },
        ),
      ),
    );
  }
}
