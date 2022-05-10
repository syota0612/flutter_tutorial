// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  const ChangeForm({Key? key}) : super(key: key);

  @override
  State<ChangeForm> createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Icon(
                Icons.thumb_up,
                color: _flag ? Colors.orange[700] : Colors.grey[500],
                size: 100.0,
              ),
            ),
            Checkbox(
              activeColor: Colors.blue,
              value: _flag,
              onChanged: _handleCheckbox,
            ),
          ],
        ));
  }
}
