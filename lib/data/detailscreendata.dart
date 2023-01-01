import 'package:flutter/material.dart';
import 'package:my_fapp/styles/homepagestyle.dart';
import 'package:my_fapp/styles/detailscreenstyles.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/showallwidget.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/models/singleproductmodel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';
import 'package:my_fapp/widgets/dropdownbuttonwidget.dart';
import 'package:my_fapp/screens/tabbar/tabbardata.dart';
import 'package:my_fapp/routes/routes.dart';


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
