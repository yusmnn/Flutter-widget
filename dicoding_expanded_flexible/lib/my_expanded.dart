import 'package:flutter/material.dart';

class InputMyExpanded extends StatelessWidget {
  const InputMyExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}

///! Expanded => widget expanded yang dapat mengenmnbangkan child dari row dan column sesuai dengan ruang yang tersedia.
///* masing masing container akan menyesuaikan ukuran terhadap ukuran layar device.
///* flex: -> container berwarna purple akan menjadi lebih besar 2/8 dari halaman.

