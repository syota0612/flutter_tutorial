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
      title: 'Direction',
      home: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.up,
          children: const <Widget>[
            Text(
              'Direction',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            Text(
              'Direction',
              style: TextStyle(color: Colors.red, fontSize: 20)
            ),
          ],
        ),
      ),
    );
  }
}
