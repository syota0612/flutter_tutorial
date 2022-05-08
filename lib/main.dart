import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './clickGood.dart';

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
      title: 'Stateful',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful'),
        ),
        body: const Center(
          child: ClickGood(),
        )
      )
    );
  }
}
