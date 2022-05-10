// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  const ChangeForm({Key? key}) : super(key: key);

  @override
  State<ChangeForm> createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _type = '';

  void _handleRadio(String? e) => setState(() {
        _type = e!;
      });

  IconData _changeIcon(String e) {
    IconData icon;
    switch (e) {
      case 'thumb_up':
        icon = Icons.thumb_up;
        break;
      case 'favorite':
        icon = Icons.favorite;
        break;
      default:
        icon = Icons.thumb_up;
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Icon(
                _changeIcon(_type),
                color: Colors.orange[700],
                size: 100.0,
              ),
            ),
            RadioListTile(
              secondary: const Icon(Icons.thumb_up),
              activeColor: Colors.blue,
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Good'),
              subtitle: const Text('Goodアイコンの表示'),
              value: 'thumb_up',
              groupValue: _type,
              onChanged: _handleRadio,
            ),
            RadioListTile(
              secondary: const Icon(Icons.favorite),
              activeColor: Colors.orange,
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Favorite'),
              subtitle: const Text('Favoriteアイコンの表示'),
              value: 'favorite',
              groupValue: _type,
              onChanged: _handleRadio,
            ),
          ],
        ));
  }
}
