import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/base_model.dart';

import 'list_button_state_model.dart';

class ListModel extends BaseModel {
  ListModel._internal();
  static final ListModel _instance = ListModel._internal();
  factory ListModel() {
    return _instance;
  }

  List<ListButtonStateModel> items = [
    ListButtonStateModel("Item One"),
    ListButtonStateModel("Item Two"),
    ListButtonStateModel("Item Three"),
    ListButtonStateModel("Item Four"),
    ListButtonStateModel("Item Five"),
    ListButtonStateModel("Item Six"),
    ListButtonStateModel("Item Seven"),
    ListButtonStateModel("Item Eight"),
    ListButtonStateModel("Item Nine"),
    ListButtonStateModel("Item Ten"),
    ListButtonStateModel("Item Eleven"),
    ListButtonStateModel("Item Twelve"),
    ListButtonStateModel("Item Thirteen"),
    ListButtonStateModel("Item Fourteen"),
    ListButtonStateModel("Item Fifteen")
  ];

  List<ListButtonStateModel> getItems() {
    return items;
  }

  void addNewItem() {
    items.add(ListButtonStateModel("text"));
    notifyListeners();
  }
}
