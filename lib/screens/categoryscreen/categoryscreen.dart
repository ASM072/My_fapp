import '../../data/categoryscreendata.dart';
import '../../widgets/categoryproductwidget.dart';
import '../tabbar/categorytabbar/categoryalltabbar.dart';
import '../../models/categoryproductmodel.dart';
import '../tabbar/categorytabbar/categorymantabbar.dart';
import '../../bottombar/bottombar.dart';
import 'package:flutter/material.dart';
import '../login_screen/login_screen.dart';
import '../signup/signup.dart';
import '../tabbar/categorytabbar/categorymantabbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/Mybuttonwidget.dart';
import '../../appColors/app_colors.dart';
import '../../widgets/textfromfieldwidget.dart';
import '../../styles/login_screenstyle.dart';
import '../../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/Mybuttonwidget.dart';
import '../homepage/homepage.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:custom_navigator/custom_navigator.dart';
import '../../styles/categoryscreenstyles.dart';




class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Welcome",
        style: CategoryScreenStyle.categoryTitleStyles,
      ),
      actions: [
        RotationTransition(
          turns: AlwaysStoppedAnimation(90 / 360),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 35,
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 35,
          ),
          onPressed: () {},
        )
      ],
      bottom: TabBar(
        indicator: BoxDecoration(color: Colors.transparent),
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
          Text("Woman"),
          Text("Kids"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.baseWhiteColor,
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            //All Place
            CategoryAllTabBar(),
            CategoryManTabBar(
                categoryProductModel: menCategoryData,
              ),
            //woman Place
            CategoryManTabBar(
              categoryProductModel: womenCategoryData,
            ),
            //Kids place
            CategoryManTabBar(
              categoryProductModel: forKids,
            ),
          ],
        ),
      ),
    );
  }
}



