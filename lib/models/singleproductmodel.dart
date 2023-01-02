import 'package:flutter/material.dart';
import '../screens/homepage/homepage.dart';
import '../appColors/app_colors.dart';
import '../data/homepagedata.dart';
import '../widgets/singleproductwidget.dart';
import '../screens/tabbar/tabbardata.dart';
import '../screens/detailscreen/detailscreen.dart';

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