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
      title: 'Column & Row',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: <Widget>[
              Container(color: Colors.blue, width: 100, height:100),
              Container(color: Colors.red, width: 100, height:100),
            ],
          ),
        ),
      ),
    );
  }
}
