
import 'package:my_fapp/bottombar/bottombar.dart';
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
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:my_fapp/styles/categoryscreenstyles.dart';


class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: AppColors.baseWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Welcome",
          style: CategoryScreenStyle.categoryTitleStyles, 
        ),
        bottom: TabBar(
          indicator: BoxDecoration(
            color: Colors.transparent
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelColor: AppColors.baseBlackColor,
            labelColor: AppColors.baseDarkPinkColor,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Text("All"),
              Text("Men"),
              Text("Women"),
              Text("Kids"),
            ]
          ),
        ),
      ),      
    );
  }
}