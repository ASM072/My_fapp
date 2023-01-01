import 'package:my_fapp/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class DetailScreenStyles{
  static const TextStyle commpanyTitleStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle productModelStyle=TextStyle(
    color: AppColors.baseDarkPinkColor,
  );
  static const TextStyle productPriceStyle=TextStyle(
    color: AppColors.baseDarkPinkColor,
  );
  static const TextStyle productOldPriceStyle=TextStyle(
    color: AppColors.baseGrey60Color,
    fontSize: 16,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle productDropDownStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 12,
  );
  static const TextStyle buttonTextStyle=TextStyle(
    color: AppColors.baseWhiteColor,
    fontSize: 20,
  );
  static const TextStyle descriptionTextStyle=TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.baseBlackColor,
  );
  static const TextStyle sizeGuideTextStyle=TextStyle(
    fontSize: 18.0,
    color: AppColors.baseBlackColor,
  );
  static const TextStyle mayLikeTextStyle=TextStyle(
    fontSize: 18.0,
    color: AppColors.baseBlackColor,
  );
  static const TextStyle showAllTextStyle=TextStyle(
    fontSize: 18.0,
    color: AppColors.baseDarkPinkColor
  );
}