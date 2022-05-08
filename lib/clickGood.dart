// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClickGood extends StatefulWidget {
  const ClickGood({Key? key}) : super(key: key);

  @override
  State<ClickGood> createState() => _ClickGoodState();
}

class _ClickGoodState extends State<ClickGood> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active =! _active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Icon(
                  Icons.thumb_up,
                  color: _active ? Colors.orange[700] : Colors.grey[500],
                  size: 100.0,
                ),
              ),
              width: 200.0,
              height: 200.0,
            ),
            Container(
              child: Center(
                child: Text(
                  _active ? 'Active' : 'Inactive',
                  style: const TextStyle(fontSize: 32.0, color: Colors.white),
                ),
              ),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: _active ? Colors.orange[700] : Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
