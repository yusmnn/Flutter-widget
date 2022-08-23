import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Input widget",
      theme: ThemeData(primaryColor: Colors.red),
      home: const MyInputWidget(),
    );
  }
}

class MyInputWidget extends StatefulWidget {
  const MyInputWidget({Key? key}) : super(key: key);

  @override
  State<MyInputWidget> createState() => _MyInputWidgetState();
}

class _MyInputWidgetState extends State<MyInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Input Widget"))),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            MyTextField(),
            MySwitch(),
            MyRadio(),
            MyCheckbox(),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  dynamic _name = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: const InputDecoration(
            hintText: "Write Your Name here..",
            labelText: "Your Name",
          ),
          onChanged: (dynamic value) {
            setState(() {
              _name = value;
            });
          },
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("hello, $_name"),
                );
              },
            );
          },
          child: const Text("Submit"),
        ),
      ],
    );
  }
}

///! 1. TextField => widget yang digunakan untuk menerima input berupa teks yang berasal dari keyboard. beberapa cara mendapatkan nilai inputan:
///*  - onChanged => berisi sebuah fungsi yang akan dipanggil setiap terjadi perubahan inputan.
///*      + setState() => dapat mengubah nilai variable state dengan memanggil fungsi setState().
///*      + onSubmitted() => mengambil nilai perubahan hanya ketika seluruh input sudah selesai di-submit.
///*      + textEditingController => cukup membuat variable TextEditingController lalu menambahkan ke widget TextField. ketika menggunakannya Pastikan unutk menghapus controller ketika halaman atau widget sudah tidak digunakan agar tidak menimbulkan kebocoran data (memory leak) menggunakan dispose method.

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool lightOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Switch Ligh"),
            Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? "Light On" : "Light Off"),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}

///! 2. Switch => widget inputan yang mengembalikan nilai boolean true atau false.
///* - bool lightOn => boolean untuk mengatur popup ->  dimana ketika false maka switch berada pada posisi nonaktif.
///* - Switch() biasanya digunakan untuk mengatur konfigurasi on/off setting.

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            "Select One:",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 132, 7, 7),
            ),
          ),
        ),
        ListTile(
          leading: Radio<String>(
            value: "Swift",
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackBar();
              });
            },
          ),
          title: const Text("Swift"),
        ),
        ListTile(
          leading: Radio<String>(
            value: "Kotlin",
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackBar();
              });
            },
          ),
          title: const Text("Kotlin"),
        ),
        ListTile(
          leading: Radio<String>(
            value: "Dart",
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackBar();
              });
            },
          ),
          title: const Text("Dart"),
        ),
      ],
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$language selected"),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

///!  3.  Radio => widget unutk memilih salah satu pilihan dari suatu field.
///*  - groupValue => akan dipilih jika radio button cocok.
///*  - Variable language => untuk menyimpan nilai radio.
///*  - onChanged => merubah nilai language(variable) sesuai pilihan user.

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool? react, flutter, wibu;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            "Select One:",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 132, 7, 7),
            ),
          ),
        ),
        ListTile(
          leading: Checkbox(
            value: react,
            onChanged: (bool? value) {
              setState(() {
                react = value;
              });
            },
          ),
          title: const Text("React"),
        ),
        ListTile(
          leading: Checkbox(
            value: flutter,
            onChanged: (bool? value) {
              setState(() {
                flutter = value;
              });
            },
          ),
          title: const Text("flutter"),
        ),
        ListTile(
          leading: Checkbox(
            value: wibu,
            onChanged: (bool? value) {
              setState(() {
                wibu = value;
              });
            },
          ),
          title: const Text("Wibu?"),
        ),
      ],
    );
  }
}
