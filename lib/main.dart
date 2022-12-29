import 'package:flutter/material.dart';
import 'package:my_fapp/screens/login_screen/login_screen.dart';
import 'package:my_fapp/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/textfromfieldwidget.dart';
import 'package:my_fapp/styles/login_screenstyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';



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
    home:  Homepage(),
    );
  }
}