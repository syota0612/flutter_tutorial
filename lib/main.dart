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
    final list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    // ホットリロード時に再ビルド
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView'),
            ),
            body: ListView.builder(
              scrollDirection: Axis.horizontal,
               itemBuilder: (BuildContext context, int index) {
                if (index >= list.length) {
                  list.addAll(["0","1","2","3","4","5","6","7","8","9",]);
                }
                return _messageItem(list[index]);
              },
            )
          )
        );
  }

  Widget separatorItem() {
    return Container(height: 10, color: Colors.orange);
  }

  Widget _messageItem(String title) {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
