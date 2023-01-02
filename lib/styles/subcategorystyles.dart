import '../appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class SubCategoryStyles{
  static const TextStyle subCategoryTitleStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle subCategoryItemStyle=TextStyle(
    color: AppColors.baseGrey60Color,
  );
  static const TextStyle subCategoryModelStyle=TextStyle(
    color: AppColors.baseGrey70Color,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}