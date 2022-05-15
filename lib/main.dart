import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// import './clickGood.dart';
import './changeForm.dart';

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
        title: 'Form',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Form'),
            ),
            body: const Center(
              child: ChangeForm(),
            )));
  }
}
