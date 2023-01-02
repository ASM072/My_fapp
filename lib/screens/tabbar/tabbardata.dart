import 'package:flutter/material.dart';
import '../../styles/homepagestyle.dart';
import '../homepage/homepage.dart';
import '../../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../appColors/app_colors.dart';
import '../../widgets/showallwidget.dart';
import '../../data/homepagedata.dart';
import 'package:my_fapp/models/singleproductmodel.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';
import 'package:my_fapp/screens/categoryscreen/categoryscreen.dart';
import '../../bottombar/bottombar.dart';
import 'package:my_fapp/routes/routes.dart';
import 'package:my_fapp/screens/detailscreen/detailscreen.dart';
import 'package:my_fapp/styles/subcategorystyles.dart';


class TabBarData extends StatelessWidget {
  final List<SingleProductModel> productData;
  //final List<CategoryProductModel> categoryProductData;
  TabBarData({required this.productData, /*required this.categoryProductData*/});
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
            PageRouting.goToNextPage(
              context: context,
              navigateTo: DetailScreen(data: data),
            );
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
