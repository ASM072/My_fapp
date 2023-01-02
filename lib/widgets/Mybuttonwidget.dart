import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Mybuttonwidget.dart';
import '../appColors/app_colors.dart';
import 'textfromfieldwidget.dart';
import '../styles/login_screenstyle.dart';
import '../svgimages/svg_images.dart';
import 'Mybuttonwidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../styles/signupscreenstyle.dart';



class MyButtonWidget extends StatelessWidget {

  final String text;
  final Color color;
  final VoidCallback onPress;
  MyButtonWidget({required this.text,required this.color, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
