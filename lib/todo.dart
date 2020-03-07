import 'package:flutter/material.dart';
import './list_item.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<TodoItem> items = [];
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TextField(
            controller: controller,
            onSubmitted: (text) {
              items.add(TodoItem("hola", "amigo"));
              controller.clear();
              setState(() {});
            },
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return Text(items[Index].activity);
                }),
          ),
        ],
      ),
    );
  }
}
