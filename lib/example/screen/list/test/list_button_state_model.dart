import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/base_model.dart';
import 'package:flutter_skeleton/core/view_model_state.dart';

class ListButtonStateModel extends ChangeNotifier {
  ListButtonStateModel(this._text, [this._active = true]);

  String _text = "";
  bool _active = false;

  String getText() {
    return _text;
  }

  void setText(String t) {
    _text = t;
  }

  bool isActive() {
    return _active;
  }

  void toggleActive() {
    _active = !_active;
    notifyListeners();
  }
}
