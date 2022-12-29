import 'package:flutter/material.dart';

class Textfromfieldwidget extends StatelessWidget {

 final String hintText;
  bool obscureText = false;

  Textfromfieldwidget({required this.hintText, required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
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





/*final String hintText;
bool obscureText=false;
Textfromfield({this.hintText, this.obsureText})

@override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical 10,

      ), 
      child: Textfromfield(
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.grey(100),
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0)
          )
        )
      )
    );
  }
}*/