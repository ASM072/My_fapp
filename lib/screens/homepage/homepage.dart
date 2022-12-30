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

buildAdvertisementPlace(){
  return Padding(

    padding: EdgeInsets.all(18.0),
    child: Container(
      height: 170,
      child: 
    )
    )
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
           // buildAdvertisementPlace(),
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
                onPressed: (){},
                productImage: data.productImage,
                productModel: data.productModel,
                productName: data.productName,
                productOldPrice: data.productOldPrice,
                productPrice: data.productPrice,

              );
             },
             )
            ),
          ],
        ),
        Center(child: Text("1Page")),
        Center(child: Text("2Page")),
        Center(child: Text("3Page")),
        Center(child: Text("4Page")),
      ],
    ),
    ),
    );
  }
}