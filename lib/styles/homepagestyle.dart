import 'package:flutter/material.dart';

import '../appColors/app_colors.dart';

class HomePageStyles{
  static const TextStyle appBarUpperTitleStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,

  );
  static const TextStyle appBarBottomTitleStyle=TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );
  static const TextStyle trendingProductNameStyle=TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle trendingProductModelStyle=TextStyle(
    fontSize: 14,
    color: AppColors.baseDarkPinkColor,
  );
  static const TextStyle trendingProductPriceStyle=TextStyle(
    fontSize: 18,
    color: AppColors.baseWhiteColor,
  );

}