import 'package:flutter/material.dart';
import 'package:textfields_practice/textfields1.dart';

void main()=>runApp(textFields());

class textFields extends StatefulWidget {
  @override
  _textFieldsState createState() => _textFieldsState();
}

class _textFieldsState extends State<textFields> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: textfield(),
      ),
    );

  }
}
