import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/textfromfieldwidget.dart';
import 'package:my_fapp/styles/login_screenstyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/styles/signupscreenstyle.dart';



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
