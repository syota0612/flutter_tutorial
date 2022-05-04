import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // 初期ビルド時のみ

  @override
  Widget build(BuildContext context) {
    // ホットリロード時に再ビルド
    return MaterialApp(
      title: 'Alignment',
      home: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(color: Colors.blue),
            ),
            Expanded(
              flex:2,
              child: Container(color: Colors.red),
            ),
            Expanded(
              child: Container(color: Colors.green),
            ),
            Expanded(
              child: Container(color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
