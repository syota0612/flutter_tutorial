// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  const ChangeForm({Key? key}) : super(key: key);

  @override
  State<ChangeForm> createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Text(
            "$_text",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            enabled: true,
            maxLength: 10,
            maxLengthEnforcement: MaxLengthEnforcement.none,
            style: const TextStyle(color: Colors.black),
            obscureText: true,
            maxLines: 1,
            decoration: const InputDecoration(
              icon: Icon(Icons.face),
              hintText: 'お名前を教えてください',
              labelText: '名前 *',
            ),
            onChanged: _handleText,
          )
        ],
      ),
    );
  }
}
