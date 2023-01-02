import 'package:flutter/material.dart';
import 'package:my_fapp/styles/homepagestyle.dart';
import 'package:my_fapp/screens/detailscreen/detailscreen.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/showallwidget.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/models/singleproductmodel.dart';
import 'package:my_fapp/styles/subcategorystyles.dart';
import 'package:my_fapp/widgets/togglebuttonwidget.dart';
import 'package:my_fapp/routes/routes.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';
import 'package:my_fapp/data/detailscreendata.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/screens/categoryscreen/subcategoryscreen.dart';
import 'package:my_fapp/models/categoryproductmodel.dart';
import 'package:my_fapp/widgets/categoryproductwidget.dart';
import 'package:my_fapp/data/categoryscreendata.dart';

class CategoryManTabBar extends StatelessWidget {

List<CategoryProductModel> categoryProductModel = [];
CategoryManTabBar({required this.categoryProductModel});



  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryProductModel.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: ( context, index) {
        var data = categoryProductModel[index];
        return CategoryProductWidget(
        onPressed: ( ){
          if(index==0){
            PageRouting.goToNextPage(
            navigateTo: SubCategory(
              productModel: clothsData[index].productModel,
              productData: clothsData,
              productName: menCategoryData[index].productName,
            ), 
            context: context);
          }
          else if(index == 1){
            PageRouting.goToNextPage(
            navigateTo: SubCategory(
              productModel: shoesData[index].productModel,
              productData: shoesData,
              productName: menCategoryData[index].productName,
            ), 
            context: context);
          }
          else if (index == 2){
            PageRouting.goToNextPage(
            navigateTo: SubCategory(
              productModel: accessoriesData[index].productModel,
              productData: accessoriesData,
              productName: menCategoryData[index].productName,
            ), 
            context: context);
          }
          else if(index == 3){
            PageRouting.goToNextPage(
            navigateTo: SubCategory(
              productModel: accessoriesData[index].productModel,
              productData: accessoriesData,
              productName: menCategoryData[index].productName,
            ), 
            context: context);
          }
          else if (index == 4){
            PageRouting.goToNextPage(
            navigateTo: SubCategory(
              productModel: accessoriesData[index].productModel,
              productData: accessoriesData,
              productName: menCategoryData[index].productName,
            ), 
            context: context);
          }
          
           },
        productImage: data.productImage,
        productName: data.productName,
        productModel: data.productModel,
        );
      }
    );
  }
}
