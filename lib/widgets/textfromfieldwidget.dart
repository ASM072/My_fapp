// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Textfromfieldwidget extends StatelessWidget {

final String hintText;
bool obscureText = false;

  Textfromfieldwidget({required this.hintText, required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}