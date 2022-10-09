import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CenterForm(),
    );
  }
}

class CenterForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  CenterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        child: SingleChildScrollView(
          key: _formkey,
          child: SizedBox(
            //! buildcontext belum jalan
            height: MediaQuery.of(context.buildContext).size.height,
          ),
        ),
      ),
    );
  }
}
