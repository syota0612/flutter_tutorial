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
    const data = [
      Text("item0"),
      Text("item1"),
      Text("item2"),
      Text("item3"),
      Text("item4"),
    ];
    // ホットリロード時に再ビルド
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView'),
            ),
            body: ListView(
              children: [
                _menuitem('メニュー1', Icon(Icons.settings)),
                _menuitem('メニュー2', Icon(Icons.map)),
                _menuitem('メニュー3', Icon(Icons.room)),
                _menuitem('メニュー4', Icon(Icons.local_shipping)),
                _menuitem('メニュー5', Icon(Icons.airplanemode_active)),
              ],
            )));
  }

  Widget _menuitem(String title, Icon icon) {
    return GestureDetector(
        child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: icon,
                ),
                Text(title,
                    style: const TextStyle(color: Colors.black, fontSize: 18.0))
              ],
            )),
        onTap: () {
          print('onTap calld');
        });
  }
}
