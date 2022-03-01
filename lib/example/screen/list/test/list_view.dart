import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_model.dart';
import 'list_view_phone.dart';

class ListView extends StatelessWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListModel>(
      create: (context) => ListModel(),
      child: ListViewPhone(),
    );
  }
}
