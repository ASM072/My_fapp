import 'package:flutter/material.dart';
import 'package:my_fapp/models/categoryproductmodel.dart';

import '../../models/singleproductmodel.dart';
import '../../routes/routes.dart';
import '../../widgets/singleproductwidget.dart';
import '../detailscreen/detailscreen.dart';


class TabBarData extends StatelessWidget {
  final List<SingleProductModel> productData;
  final List<CategoryProductModel>? categoryProductData;
  TabBarData({required this.productData, this.categoryProductData});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: productData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
