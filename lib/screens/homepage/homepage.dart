import 'package:flutter/material.dart';
import '../../styles/homepagestyle.dart';
import 'homepage.dart';
import '../../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../appColors/app_colors.dart';
import '../../widgets/showallwidget.dart';
import '../../data/homepagedata.dart';
import '../../models/singleproductmodel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../../widgets/singleproductwidget.dart';
import '../tabbar/tabbardata.dart';
import '../detailscreen/detailscreen.dart';
import '../../routes/routes.dart';

class Homepage extends StatelessWidget {
  
  AppBar buildAppBar(){
    return AppBar(
      bottom: TabBar(
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

        children: [
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
            turns: AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
          onPressed: () {
            // PageRouting.goToNextPage(
            //   context: context,
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
  })
  {
  return Container(
    margin: EdgeInsets.only(
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
                  SizedBox(
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
          padding: EdgeInsets.symmetric(
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

    padding: EdgeInsets.all(18.0),
    child: Container(
      height: 170,
      child: Carousel(
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(microseconds: 1000),
        showIndicator: false,
        images: [
          Container(
           margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Advertisement1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          Container(
           decoration: BoxDecoration(
                image: DecorationImage(
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
    appBar: buildAppBar(),
    body: TabBarView(
      children: [

        ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildAdvertisementPlace(),
            ShowAllWidget(
              leftText: "New Arrival",
            ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 12.0, 
            ),
            child: GridView.builder(
                shrinkWrap: true,
                primary: true,
                itemCount: singleProductData.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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

            Divider(
              indent: 15,
              endIndent: 16,
            ),
            ShowAllWidget(
              leftText: "What\'s trending",
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
                ShowAllWidget(
                  leftText: "History",
                ),
                Container(
                  height: 400,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleProductData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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