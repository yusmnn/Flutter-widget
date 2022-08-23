import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon aes',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.whatsapp_rounded,
                    size: 32.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.email_rounded,
                    size: 32.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.tiktok_rounded,
                    size: 32.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.wechat_rounded,
                    size: 32.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.telegram_rounded,
                    size: 32.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.quora_rounded,
                    size: 32.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
