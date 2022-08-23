import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/my_color.dart';
import 'package:flutter_application_2/widgets/my_button.dart';
import 'package:flutter_application_2/widgets/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
              onTap: () {},
              color: MyColor.darkPurple3,
              centerText: Text('Login')),
          MyTextField()
        ],
      ),
    );
  }
}
