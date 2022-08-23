import 'package:flutter/material.dart';

class InputListView extends StatelessWidget {
  InputListView({Key? key}) : super(key: key);

  final List<int> numberList = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$number', // Ditampilkan sesuai item
                style: const TextStyle(fontSize: 20),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
