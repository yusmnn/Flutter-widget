import 'package:flutter/material.dart';

class InputMyFlexible extends StatelessWidget {
  const InputMyFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Container(
          height: 100,
          color: Colors.cyan,
        ),
      ),
      Flexible(
        flex: 3,
        child: Container(color: Colors.black),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.indigo,
        ),
      ),
    ]);
  }
}
