import '../../detailscreen/detailscreen.dart';
import '../../../routes/routes.dart';
import '../../../models/singleproductmodel.dart';
import '../../../widgets/singleproductwidget.dart';
import '../../../widgets/showallwidget.dart';
import 'package:flutter/material.dart';
import '../../../data/categoryscreendata.dart';



class CategoryAllTabBar extends StatelessWidget {
  Widget builderRender({required List<SingleProductModel> singleProduct}) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        itemCount: singleProduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      physics: const BouncingScrollPhysics(),
      children: [
        const ShowAllWidget(
          leftText: "Clothing",
        ),
        builderRender(singleProduct: categoryClothData),
        const ShowAllWidget(
          leftText: "Shoes",
        ),
        builderRender(
          singleProduct: categoryShoesData,
        ),
        const ShowAllWidget(
          leftText: "Accessories",
        ),
        builderRender(
          singleProduct: categoryAccessoriesData,
        ),
      ],
    );
  }
}
