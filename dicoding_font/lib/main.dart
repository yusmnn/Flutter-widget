import 'dart:ui';

import 'package:flutter/material.dart';

void main() => {runApp(const MyApp())};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Font',
      theme: ThemeData(
        /* fontFamily: 'Costom font Default',*/
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Font'),
      ),
      body: const SafeArea(
        child: MyFont(),
      ),
    );
  }
}

class MyFont extends StatelessWidget {
  const MyFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Text(
            'Text Dengan Font Oswald\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum Dolor sit amet',
            style: TextStyle(fontFamily: 'oswald', fontSize: 20),
          ),
          Text(
            'Text Dengan Font pacifico\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum Dolor sit amet',
            style: TextStyle(fontFamily: 'pacifico', fontSize: 20),
          )
        ],
      ),
    );
  }
}

///! # menambahkan font ke project => unduh font -> masukkan file font ke folder di dalam project -> daftarkan font di pubspec.yaml.\
///* fontFamily: untuk menggunakan font yang telah didaftarkan di pubspec.yaml.
///*  ubah font default: tambahkan parameter fontFamily pada kelas ThemeData yang ada pada parameter theme MaterialApp
