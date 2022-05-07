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
    final grid = [
      "pic0",
      "pic1",
      "pic2",
      "pic3",
      "pic4",
      "pic5",
    ];
    // final list = [
    //   _photoItem("pic0"),
    //   _photoItem("pic1"),
    //   _photoItem("pic2"),
    //   _photoItem("pic3"),
    //   _photoItem("pic4"),
    //   _photoItem("pic5"),
    // ];
    // ホットリロード時に再ビルド
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('GridView'),
            ),
            body: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (index >= grid.length) {
                  grid.addAll(["pic0", "pic1", "pic2", "pic3", "pic4", "pic5",]);
                }
                return _photoItem(grid[index]);
              },
            )));
  }

  Widget _photoItem(String image) {
    final assetsImage = "./assets/img/" + image + ".png";
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
