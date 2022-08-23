import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:
          InputDecoration(prefixIcon: Icon(FluentIcons.person_20_regular)),
    );
  }
}
