import 'package:flutter/material.dart';
import 'my_listview.dart';
import 'my_listview_builder.dart';
import 'my_listview_separated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter listview',
      theme: ThemeData(),
      home: const MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            //! Run => Comment salah satu!!
            //InputListView(),
            //InputListViewBuilder(),
            InputListViewSeparated(),
      ),
    );
  }
}
