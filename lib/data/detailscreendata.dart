import 'package:flutter/material.dart';
import '../styles/homepagestyle.dart';
import '../styles/detailscreenstyles.dart';
import '../screens/homepage/homepage.dart';
import '../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../appColors/app_colors.dart';
import '../widgets/showallwidget.dart';
import 'homepagedata.dart';
import '../models/singleproductmodel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/singleproductwidget.dart';
import '../widgets/dropdownbuttonwidget.dart';
import '../screens/tabbar/tabbardata.dart';
import '../routes/routes.dart';


List<SingleProductModel> detailScreenData = [
  SingleProductModel(
    productImage:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/3e76e7dffa364e3389eca91200fd9a74_9366/POD-S3.1_Shoes_Black_B37366_07_standard.jpg',
    productModel: 'Sneakers',
    productName: 'Pod-S 3.1',
    productOldPrice: 140,
    productPrice: 100,
    productFourImage: '',
    productSecondImage:  '',
    productThirdImage: ''
  ),
  SingleProductModel(
    productImage:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/5adc6dabf52a4b23a97baa060176638a_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_01_standard.jpg',
    productModel: 'Jackets',
    productName: 'Floral Track',
    productOldPrice: 140,
    productPrice: 99,
     productFourImage: '',
    productSecondImage: '',
    productThirdImage: ''
  ),
  SingleProductModel(
    productImage:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/5adc6dabf52a4b23a97baa060176638a_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_01_standard.jpg',
    productModel: 'Sneakers',
    productName: 'Rivalry RM Low',
    productOldPrice: 158,
    productPrice: 130,
     productFourImage: '',
    productSecondImage: '',
    productThirdImage: ''
  ),
];
