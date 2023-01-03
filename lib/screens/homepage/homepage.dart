// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/screens/detailscreen/detailscreen.dart';
import 'package:my_fapp/screens/filterscreen/filterscreen.dart';
import 'package:my_fapp/styles/homepagestyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';

import '../../data/homepagedata.dart';
import 'package:my_fapp/routes/routes.dart';
import '../../widgets/showallwidget.dart';
import '../../widgets/singleproductwidget.dart';
import '../tabbar/tabbardata.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  
  AppBar buildAppBar(BuildContext context){
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("ALL"),
          Text("Clothing"),
          Text("Shoes"),
          Text("Accessories"),
        ]
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(

        children: const [
          Text(
            "Welcome",
            style: HomePageStyles.appBarUpperTitleStyle,
          ),
          Text(
            "Shopping",
            style: HomePageStyles.appBarBottomTitleStyle,

          ),
        ],
      ),
      actions: [
       IconButton(
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
          onPressed: () {
            // PageRouting.goToNextPage(
            //   context: context,
            //   // ignore: prefer_const_constructors
            //   navigateTo: FilterScreen(),
            // );
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
        onPressed: ( ){},
        ),
      ],
    );
  }
Widget buildTrendingProduct(
  {
  required String productModel, 
  required String productImage, 
  required String productName,
  required double productPrice,
  }){
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 7.5,
          bottom: 20,
        ),
        height: 100,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Material(
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.network(productImage),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: HomePageStyles.trendingProductNameStyle,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        productModel,
                        style: HomePageStyles.trendingProductModelStyle,
                      ),
                  ], 
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: MaterialButton (
                color: AppColors.baseLightPinkColor,
                elevation: 0,
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.7),
                  side: BorderSide.none,
                ),
                onPressed: (){},
                child: Text(
                  "\$ $productPrice", 
                  style: HomePageStyles.trendingProductPriceStyle,
                ),
              ),
            ),
          ],
        ),
      );
}
Widget buildAdvertisementPlace(){
  return Padding(

    padding: const EdgeInsets.all(18.0),
    child: SizedBox(
      height: 170,
      child: Carousel(
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: const Duration(microseconds: 1000),
        showIndicator: false,
        images: [
          Container(
           margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/Advertisement1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          Container(
           decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/Advertisement2.png'),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
          )
          ] 
        )
      ),
    );
}

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
    appBar: buildAppBar(context),
    body: TabBarView(
      children: [

        ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildAdvertisementPlace(),
            const ShowAllWidget(
              leftText: "New Arrival",
            ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0, 
            ),
            child: GridView.builder(
                shrinkWrap: true,
                primary: true,
                itemCount: singleProductData.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
             itemBuilder: (context, index){
              var data = singleProductData[index];
              return Singleproductwidget(
                onPressed: (){
                  PageRouting.goToNextPage(
                    context: context,
                    navigateTo: DetailScreen(
                      data: data,
                    ),
                  );
                },
                productImage: data.productImage,
                productModel: data.productModel,
                productName: data.productName,
                productOldPrice: data.productOldPrice,
                productPrice: data.productPrice,

              );
             },
             )
            ),

            const Divider(
              indent: 15,
              endIndent: 16,
            ),
            const ShowAllWidget(
              leftText: "What's trending",
            ),
            buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
            buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                const ShowAllWidget(
                  leftText: "History",
                ),
                SizedBox(
                  height: 400,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleProductData.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5
                    ),
                    itemBuilder: (context, index){
                      var data = singleProductData[index];
                      return Singleproductwidget(
                      onPressed: (){
                        PageRouting.goToNextPage(
                          context: context,
                          navigateTo: DetailScreen(
                            data: data,
                          ),
                        );
                      },
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productName: data.productName,
                      productOldPrice: data.productOldPrice,
                      productPrice: data.productPrice,

                      );
                    }
                  )
                )
          ],
        ),
        TabBarData(
          productData: clothsData,
        ),
        TabBarData(
          productData: shoesData,
        ),
        TabBarData(
          productData: accessoriesData,
        ),
      ],
    ),
    ),
    );
  }
}