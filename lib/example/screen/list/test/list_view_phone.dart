import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_button_state_model.dart';
import 'list_model.dart';

class ListViewPhone extends StatelessWidget {
  ListViewPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListModel model = context.watch<ListModel>();
    List<ListButtonStateModel> items = model.getItems();

    return Scaffold(
      backgroundColor: const Color(0xFF232c33),
      body: ListView.builder(
        itemBuilder: (context, index) {
          ListButtonStateModel buttonModel = items[index];

          return ChangeNotifierProvider<ListButtonStateModel>(
            create: (context) => buttonModel,
            child: GestureDetector(
              onTap: () {
                buttonModel.toggleActive();
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  color: buttonModel.isActive() ? Colors.red : Colors.white,
                ),
                padding: const EdgeInsets.all(50),
                child: Text(buttonModel.getText()),
              ),
            ),
          );
        },
        itemCount: items.length,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          model.addNewItem();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        child: const Text(
          "+",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
