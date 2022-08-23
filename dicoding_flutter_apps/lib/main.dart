/// import => digunakan untuk memanggil fungsi dari berkas lain
// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart';

/// main() => kode dasar dari project flutter
/// yang nantinya akan menjalankan runApp() dcan memanggil MyApp()
void main(List<String> args) {
  runApp(const MyApp());
}

/// MyApp{} class yang menampilkan komponen flutter ke layar atau dikenal dengan widgets
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: const Center(
          child: BiggerText(text: 'Hello, world!'),
        ),
      ),
    );
  }
}
/**
 * Setiap komponen di dalam flutter terdiri dari widget.
 * MaterialApp => widget bawaan flutter yang akan menjadi fondasi dari aplikasi yang mengatur beberapa hal yaitu tema aplikasi, tampilan utama aplikasi, rute untuk navigasi antar halaman, etc. penjelasan lengkap widget yang digunakan diatas:
  * - https://api.flutter.dev/flutter/material/MaterialApp-class.html
    - https://api.flutter.dev/flutter/material/Scaffold-class.html
    - https://api.flutter.dev/flutter/widgets/Center-class.html
    - https://api.flutter.dev/flutter/widgets/Text-class.html
 */

/** ### https://www.dicoding.com/academies/159/tutorials/6479?from=6475
 * State => data yang ada pada suatu widget. widget menyimpan data yang nantinya dapat berubah sesuai interaksi pengguna.
 * state biasanya menjadi suatu properti dari sebuah class.
 */

// statelessWidget => widget yang nilai statenya tidak dapat diubah(immutable), bersifat statis dan interaksi terbatas:
class Heading extends StatelessWidget {
  final String text;
  @immutable
  Heading({required this.text});

  // widget untuk membuat heading
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// statefulWidget => widget yang statenya dapat berubah nilainya sehingga bersifat dinamis dan interaksi yang tidak terbatas:
class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 12.0; // state dari widget BiggerText

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: Text('Perbesar'),
          onPressed: () {
            setState(() {
              _textSize = 50.0;
            });
          },
        )
      ],
    );
  }
}
