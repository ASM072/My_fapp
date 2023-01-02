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
import 'package:my_fapp/screens/tabbar/categorytabbar/categorymantabbar.dart';


class SubCategory extends StatefulWidget {
  List<SingleProductModel> productData;
  final String productName;
  final String productModel;
  SubCategory({
    required this.productData,
    required this.productName,
    required this.productModel,
  });
  
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {

  AppBar buildAppBar(){
    return AppBar( 
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90/360,),
          
          child: SvgPicture.asset(SvgImages.filter,
            color: AppColors.baseBlackColor,
            width: 35,
            ),
          ),  
          onPressed: (){},
          ),
          IconButton(
          icon: SvgPicture.asset(SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 35,
            ),
            onPressed: (){},
          ),
        ],
      );
  }
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: SubCategoryStyles.subCategoryTitleStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.productData.length} Products",
                  style: SubCategoryStyles.subCategoryItemStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.list_alt_sharp,
                            color: AppColors.baseBlackColor,
                            size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.productModel,
                              style: SubCategoryStyles.subCategoryModelStyle,
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ToggleButtonWidget(),
                        ]
                      )
                    )
                  ],
                ),
                Divider(),
                GridView.builder(
                itemCount: widget.productData.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ), 
                itemBuilder: (context, index){
                  var data = widget.productData[index];
                  return Singleproductwidget(
                     onPressed: (){
                      PageRouting.goToNextPage(
                        navigateTo: DetailScreen(
                          data: data,
                        ),
                        context: context,
                      );
                     },
                      productImage: data.productImage,
                      productModel: data.productModel,
                      productOldPrice: data.productOldPrice,
                      productName: data.productName,
                      productPrice: data.productPrice,
                  );
                }
                ),
              ],
            ),
            ),
        ],
      ),
      
    );
  }
}
