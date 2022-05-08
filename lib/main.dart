import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // 初期ビルド時のみ

  @override
  // ホットリロード時に再ビルド
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: Card(
          margin: const EdgeInsets.all(50.0),
          child: Container(
            margin: const EdgeInsets.all(10.0),
            width: 300,
            height: 100,
            child: const Text(
              'Card',
              style: TextStyle(fontSize: 30),
            )
          )
        )
      )
    );
  }
}
