import 'package:flutter/material.dart';

class InputMediaQuery extends StatelessWidget {
  const InputMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Column(
      children: [
        Text(
          'Screen width: ${screenSize.width.toStringAsFixed(2)}',
          style: const TextStyle(color: Colors.red, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        Text(
          'Orientation: $orientation',
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

//! MediaQuery adalah kelas yang dapat kita gunakan untuk mendapatkan ukuran dan juga orientasi layar.
