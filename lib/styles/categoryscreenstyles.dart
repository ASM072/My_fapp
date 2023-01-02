import '../appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CategoryScreenStyle{
  static const TextStyle categoryTitleStyles=TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  ); 
  static const TextStyle categoryProductNameStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle categoryProductModelStyle=TextStyle(
    color: AppColors.baseDarkPinkColor,
    fontSize: 14,
  );  
}