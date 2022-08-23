import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// memanggil FirstSreen
      home: const FirstScreen(),
    );
  }
}

/// Pada kode di bawah kita membuat sebuah StatelessWidget bernama FirstScreen, yang merupakan widget tampilan kita.
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ///Pada kode IconButton kita menambahkan Icon search pada bagian kanan AppBar
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text("First Screen"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          // ignore: sort_child_properties_last

          // ignore: sort_child_properties_last
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "click me",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.rectangle,

            /// Pada kode di atas kita menambahkan parameter shape dengan nilai BoxShape.rectangle. Artinya, bentuk dari Container tersebut akan berbentuk persegi. BoxShape memiliki opsi circle atau rectangle.

            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(1, 2),
                blurRadius: 10,
              ),
            ],

            /// Pada kode di atas parameter boxShadow merupakan sebuah Array. Di dalamnya terdapat BoxShadow yang artinya pada Container kita dapat memberikan banyak bayanga          border: Border.all(color: Colors.green, width: 3),
            border: Border.all(color: Colors.black12, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),

          /// menentukan warna background dari container dengan decoration -> boxdecoration
        ),
      ),

      /// Pada kode di atas kita membuat sebuah Text "Hi" yang dibungkus oleh widget Container dan kita beri parameter color dengan nilai Colors.blue. Kita letakkan Container di dalam parameter body. Apa hasilnya? Text "Hi" akan memiliki background berwarna biru
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

/// Pada kode di atas kita menambahkan parameter appBar pada Scaffold dan menambahkan title pada AppBar tersebut. Title di sini tidak hanya spesifik Text saja, melainkan juga dapat diisi dengan widget lainnya seperti TextField untuk kolom pencarian atau yang lainnya.

/// ### WIODGET YANG DIGUNAKAN ###
/// Scaffold -> widget untuk membuat tampilan dasar material design pada aplikasi.
/// Container -> widget yang digunakan unutk melakukknan styling, shape(bentuk), layout pada widget childnya.
/// Padding -> widget unutk padding pada suatu widget.
/// center -> widget untuk memposisikan widget ke tengah

