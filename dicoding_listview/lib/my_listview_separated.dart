import 'package:flutter/material.dart';

class InputListViewSeparated extends StatelessWidget {
  InputListViewSeparated({Key? key}) : super(key: key);
  final List<int> numberList = [11, 22, 33];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.blue,
              ),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        });
  }
}
