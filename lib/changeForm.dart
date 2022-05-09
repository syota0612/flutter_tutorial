// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  const ChangeForm({Key? key}) : super(key: key);

  @override
  State<ChangeForm> createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  final _formKey = GlobalKey<FormState>();

  final String _name = '';
  final String _email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
        key: this._formKey,
        child: Container(
            padding: const EdgeInsets.all(50.0),
            child: Column(children: <Widget>[
              TextFormField(
                  enabled: true,
                  maxLength: 20,
                  maxLengthEnforcement: MaxLengthEnforcement.none,
                  obscureText: false,
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: const InputDecoration(
                    hintText: 'お名前を教えてください',
                    labelText: '名前*',
                  ),
                  validator: (value) {
                    return value!.isEmpty ? '必須入力です' : null;
                  },
                  onSaved: (value) {
                    this._name != value;
                  }),
              TextFormField(
                maxLength: 100,
                autovalidateMode: AutovalidateMode.disabled,
                decoration: const InputDecoration(
                  hintText: '連絡先を教えてください。',
                  labelText: 'メールアドレス *',
                ),
                validator: (value) {
                  print(value);
                  return value!.contains('@') ? null : 'アットマーク「＠」がありません。';
                },
                onSaved: (value) {
                  this._email != value;
                },
              ),
              ElevatedButton(
                onPressed: _submission,
                child: const Text('保存'),
              ),
            ])));
  }

  void _submission() {
    if (this._formKey.currentState!.validate()) {
      this._formKey.currentState!.save();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Processing Data')));
      print(this._name);
      print(this._email);
    }
  }
}
