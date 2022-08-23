import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pengenalan Container")),
        // widget container dengan pengaturan padding & margin
        body: Container(
          child: Text(
            "Contoh Widget container",
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.greenAccent,
          margin: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
