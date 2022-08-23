import 'package:flutter/material.dart';
import 'media_query.dart';
import 'layout_builder.dart';
import 'responsive_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsivePage(),
      //* MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layout')),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //InputMediaQuery(),
            Layoutbuilder(),
          ],
        ),
      ),
    );
  }
}
