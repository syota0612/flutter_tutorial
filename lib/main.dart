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
        body: Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 80,
              color: Colors.orange,
            )
          ],
        )
      )
    );
  }
}
