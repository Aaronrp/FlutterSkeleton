import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/view_model_state.dart';

class BaseModel extends ChangeNotifier {
  ViewModelState _state = ViewModelState.Idle;

  ViewModelState get state => _state;

  void setState(ViewModelState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
