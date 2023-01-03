// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../appColors/app_colors.dart';
import '../../data/categoryscreendata.dart';
import '../../styles/categoryscreenstyles.dart';
import '../../svgimages/svg_images.dart';
import '../tabbar/categorytabbar/categoryalltabbar.dart';
import '../tabbar/categorytabbar/categorymantabbar.dart';




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
      title: const Text(
        "Welcome",
        style: CategoryScreenStyle.categoryTitleStyles,
      ),
      actions: [
        RotationTransition(
          turns: const AlwaysStoppedAnimation(90 / 360),
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
      bottom: const TabBar(
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



