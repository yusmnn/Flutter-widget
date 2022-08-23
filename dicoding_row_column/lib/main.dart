import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Row & Column"),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignment.start",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignment.center",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignment.end",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignmen.spaceAround",
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignment.spaceBetween",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "MainAxisAlignment.spaceEvenly",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
