import 'package:flutter/material.dart';
import 'package:my_fapp/styles/homepagestyle.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/showallwidget.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/models/singleproductmodel.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';


class TabBarData extends StatelessWidget {
  final List<SingleProductModel> productData;
  //final List<CategoryProductModel> categoryProductData;
  TabBarData({required this.productData, /*this.categoryProductData*/});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: productData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = productData[index];
        return Singleproductwidget(
          onPressed: () {
            // PageRouting.goToNextPage(
            //   context: context,
            //   navigateTo: DetailScreen(data: data),
            // );
          },
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}
