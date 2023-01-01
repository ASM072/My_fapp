import 'package:flutter/material.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';
import 'package:my_fapp/screens/tabbar/tabbardata.dart';
import 'package:my_fapp/screens/detailscreen/detailscreen.dart';

class SingleProductModel{
final String productName;
final String productImage;
final String productModel;
final double productPrice;
final double productOldPrice;
final String productSecondImage;
final String productThirdImage;
final String productFourImage;
SingleProductModel(
  {
    required this.productThirdImage,
    required this.productFourImage,
    required this.productImage,
    required this.productModel,
    required this.productName,
    required this.productOldPrice,
    required this.productPrice,
    required this.productSecondImage,
  }
);
}