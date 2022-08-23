import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(title: const Text(" Dicoding Button")),
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text("ElevatedButton"),
              ),
              TextButton(
                onPressed: () {
                  // aksi ketika button diklik,
                },
                child: const Text("TextButton"),
              ),
              OutlinedButton(
                onPressed: () {
                  // Aksi ketika button diklik,
                },
                child: const Text("OutlinedButton"),
              ),
              IconButton(
                icon: const Icon(Icons.volume_up),
                onPressed: (() {
                  // Aksi ketika button diklik,
                }),
              ),
              const TombolDropDown(),
            ],
          ),
        ),
      ),
    );
  }
}

class TombolDropDown extends StatefulWidget {
  const TombolDropDown({Key? key}) : super(key: key);

  @override
  State<TombolDropDown> createState() => _TombolDropDownState();
}

class _TombolDropDownState extends State<TombolDropDown> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: "Dart",
            child: Text("Dart"),
          ),
          DropdownMenuItem<String>(
            value: "Kotlin",
            child: Text("Kotlin"),
          ),
          DropdownMenuItem<String>(
            value: "Java",
            child: Text("Java"),
          ),
        ],
        value: language,
        hint: const Text("Select language"),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        });
  }
}

/// ### BUTTON
/// Widget button => widget yang dapat menerima trigger sentuhsn atau dapat melakukan suatu fungsi ketika disentuh.
/// 1. ElevatedButton => bagian dari material design widget dari flutter.
///   - onpressed => parameter yang function event ketika tombol ditekan, terdapat event lain seperti onLongPress dan onHighlightChanged.
///   - child => parameter child diisi dengan wiget pada umumnya.
/// 2. TextButton => widget button yan memiliki tampilan polos seperti text, umumnya digunakan pada toolbars,dialog, komponen button lain. sma halnya dengan ElevatedButton, TextButton juga memiliki parameter onPressed dan child.
/// 3. OutlinedButton => widget dengan TextButton dengan tambahan outline. umumnya digunakan unutk tombol atau aksi yang penting tetapi bukan aksi utama dalam aplikasi.
/// 4. IconButton => widget button dengan icon, tidak memiliki child tetapi menggunakan parameter icon dan tooltip unutk memberikan hintpada button.
/// 5. DropDownButton => tombol yang saat diklik akan muncul pop-up daftar beberapa item yang dapat kita pilih salah satu.
/// - DropMenuItem => untuk popup-nya.
/// - items => berisi list dari widget DropDownmenuItem.
/// - child => berisi item untuk DropDownItem.
/// - value => nilai dari tiap itemnya.
/// - onChanged => ketika ada perubahan atau ketika milih salah satu dari item dan mengubah nilai value dari DropDownbutton.
/// - hint => berfungsi ketika nilai velue null atau kosong.


