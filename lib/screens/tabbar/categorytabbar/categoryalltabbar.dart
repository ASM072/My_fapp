import '../../detailscreen/detailscreen.dart';
import '../../../routes/routes.dart';
import '../../../models/singleproductmodel.dart';
import 'package:my_fapp/widgets/singleproductwidget.dart';
import 'package:my_fapp/widgets/showallwidget.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/data/categoryscreendata.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/models/categoryproductmodel.dart';



class CategoryAllTabBar extends StatelessWidget {
  Widget builderRender({required List<SingleProductModel> singleProduct}) {
    return Container(
      height: 250,
      child: GridView.builder(
        itemCount: singleProduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singleProduct[index];
          return Singleproductwidget(
            onPressed: () {
              PageRouting.goToNextPage(
                  navigateTo: DetailScreen(data: data), 
                  context: context);
            },
            productImage: data.productImage,
            productModel: data.productModel,
            productName: data.productName,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ShowAllWidget(
          leftText: "Clothing",
        ),
        builderRender(singleProduct: categoryClothData),
        ShowAllWidget(
          leftText: "Shoes",
        ),
        builderRender(
          singleProduct: categoryShoesData,
        ),
        ShowAllWidget(
          leftText: "Accessories",
        ),
        builderRender(
          singleProduct: categoryAccessoriesData,
        ),
      ],
    );
  }
}
