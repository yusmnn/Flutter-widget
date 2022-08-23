import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Image",
      theme: ThemeData(),
      home: const MyInputImage(),
    );
  }
}

class MyInputImage extends StatelessWidget {
  const MyInputImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              ImageNetwork(),
              ImageAsset(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Text(
            "Image Menggunakan Image.Network",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          "https://i.postimg.cc/nzp3hrZh/profile-light-Blue.png",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}

///! # Image.network => untuk menampilkan gambar yang bersumber dari internet.
///*    syntax : Image.network(url)

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 5.0),
          child: Text(
            "Image Menggunakan Image.asset",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.asset(
          "lib/images/iconAndroid.png",
          width: 300,
          height: 300,
        ),
      ],
    );
  }
}

///! # Image.asset => untuk menampilkan gambar fisik dari folder lokal.
///* format gambar yang didukung => JPEG, PNG, GIF Animated GIF, WebP, Animated WebP, BMP, WBMP. jika diluar format ini maka flutter akan memanfaatkan API dari Masing" platform.
