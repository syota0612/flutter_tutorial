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
            Positioned(
              left: 20.0,
              top: 20.0,
              width: 300.0,
              height: 300.0,
              child: Container(color: Colors.blue,),
            ),
            Positioned(
              left: 10.0,
              top: 10.0,
              width: 100.0,
              height: 100.0,
              child: Container(color: Colors.green,),
            ),
            Positioned(
              left: 120.0,
              top: 120.0,
              width: 100.0,
              height: 100.0,
              child: Container(color: Colors.orange,),
            ),
          ],
        )
      )
    );
  }
}
