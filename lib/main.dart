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
    final list = [
      "メッセージ",
      "メッセージ",
      "メッセージ",
      "メッセージ",
      "メッセージ",
    ];
    // ホットリロード時に再ビルド
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView'),
            ),
            body: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              if (index >= list.length) {
                list.addAll([
                  "メッセージ",
                  "メッセージ",
                  "メッセージ",
                  "メッセージ",
                ]);
              }
              return _messageItem(list[index]);
            })));
  }

  Widget _messageItem(String title) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        onTap: () {
          print('onTap calld.');
        },
        onLongPress: () {
          print('onLongPress calld.');
        },
      ),
    );
  }
}
