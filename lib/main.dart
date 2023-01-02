
import 'bottombar/bottombar.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'widgets/Mybuttonwidget.dart';
import 'appColors/app_colors.dart';
import 'widgets/textfromfieldwidget.dart';
import 'styles/login_screenstyle.dart';
import 'svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/Mybuttonwidget.dart';
import 'screens/homepage/homepage.dart';
import 'screens/detailscreen/detailscreen.dart';
import 'package:my_fapp/screens/categoryscreen/subcategoryscreen.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          ),
        ),

        primarySwatch: Colors.blue,
      ),
    home:  BottomBar(),
    );
  }
}