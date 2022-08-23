import 'package:flutter/material.dart';

class InputListViewBuilder extends StatelessWidget {
  InputListViewBuilder({Key? key}) : super(key: key);
  final List<String> numberList = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numberList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      },
    );
  }
}
