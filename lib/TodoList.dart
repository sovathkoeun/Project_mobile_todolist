
import 'package:flutter/material.dart';

class ListBox extends StatefulWidget {
  @override
  _ListBoxState createState() => _ListBoxState();
}

class _ListBoxState extends State<ListBox> {
  Map <String, bool> Todo = {
     "read a book": false,
    "clean a home": false,
    "go to school": false,
  };
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
       body: ListView(  
         children: Todo.keys.map((String key) {
           return CheckboxListTile(
             title: Text(key),
             value: Todo[key],
             onChanged: (bool value) {
               setState(() {
                 Todo[key] = value;
               });
             },
           );
         }).toList(),
       ),
    );
  }
}

