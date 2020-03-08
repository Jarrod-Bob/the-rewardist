import 'dart:async';

import 'package:flutter/material.dart';
import './list_item.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<TodoItem> items = [];
  final TextEditingController controller = new TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
          RaisedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return Text(items[Index].activity + " " + selectedDate.toString());
                }),
          ),
        ],
      ),
    );
  }
}
