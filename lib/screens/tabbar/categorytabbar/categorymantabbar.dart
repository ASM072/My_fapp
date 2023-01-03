// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../data/categoryscreendata.dart';
import '../../../data/homepagedata.dart';
import '../../../models/categoryproductmodel.dart';
import '../../../routes/routes.dart';
import '../../../widgets/categoryproductwidget.dart';
import '../../categoryscreen/subcategoryscreen.dart';

class CategoryManTabBar extends StatelessWidget {

List<CategoryProductModel> categoryProductModel = [];
CategoryManTabBar({required this.categoryProductModel});



  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryProductModel.length,
      physics: const BouncingScrollPhysics(),
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
