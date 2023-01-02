import 'package:flutter/material.dart';
import '../../styles/homepagestyle.dart';
import '../../styles/detailscreenstyles.dart';
import '../homepage/homepage.dart';
import '../../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../appColors/app_colors.dart';
import '../../widgets/showallwidget.dart';
import '../../data/homepagedata.dart';
import '../../models/singleproductmodel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../../widgets/singleproductwidget.dart';
import '../../widgets/dropdownbuttonwidget.dart';
import '../tabbar/tabbardata.dart';
import '../../routes/routes.dart';
import '../../data/detailscreendata.dart';


class DetailScreen extends StatefulWidget {
  final SingleProductModel data;

  DetailScreen({required this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
   String? _ratingController;
   String? _sizeController;

  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Reebok",
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.heart,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: "Fave",
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.upload,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: "Fave",
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  // buildListTile() {
  //   return ListTile(
  //     leading: CircleAvatar(
  //       radius: 35,
  //       backgroundColor: Colors.transparent,
  //       backgroundImage: 
  //       AssetImage("assets/images/Logo.png"),
  //       // NetworkImage(
  //       //   'https://i2.wp.com/www.logotaglines.com/wp-content/uploads/2018/04/Reebok-new-logo.png?resize=489%2C480&ssl=1',
  //       // ),
  //     ),
  //     title: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           widget.data.productName,
  //           overflow: TextOverflow.ellipsis,
  //           style: DetailScreenStyles.commpanyTitleStyle,
  //         ),
  //         SizedBox(
  //           height: 5,
  //         ),
  //         Text(
  //           widget.data.productModel,
  //           style: DetailScreenStyles.productModelStyle,
  //         ),
  //       ],
  //     ),
  //     trailing: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           widget.data.productPrice.toString(),
  //           style: DetailScreenStyles.productPriceStyle,
  //         ),
  //         SizedBox(
  //           height: 5,
  //         ),
  //         Text(
  //           widget.data.productOldPrice.toString(),
  //           style: DetailScreenStyles.productOldPriceStyle,
  //         ),
  //       ],
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
      ListTile(
              leading: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: 
              AssetImage("assets/images/Logo.png"),
              // NetworkImage(
              //   'https://i2.wp.com/www.logotaglines.com/wp-content/uploads/2018/04/Reebok-new-logo.png?resize=489%2C480&ssl=1',
              // ),
              ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  overflow: TextOverflow.ellipsis,
                  style: DetailScreenStyles.commpanyTitleStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productModel,
                  style: DetailScreenStyles.productModelStyle,
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStyles.productPriceStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailScreenStyles.productOldPriceStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.productImage,
                    fit: BoxFit.cover,
                    ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productSecondImage
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productThirdImage
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productFourImage
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DropDownButtonWidget(
                  hintText: "Color",
                  item: ["red", "blue", "black", "pink"],
                  ratingController: _ratingController,
                ),
              ),
              Expanded(
                child: DropDownButtonWidget(
                  hintText: "Size",
                  item: ["25", "30", "40", "45"],
                  ratingController: _sizeController,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Add to Cart",
                style: DetailScreenStyles.buttonTextStyle,
              ),
              onPressed: (){},
            ),
          ),
          ExpansionTile(
            title: Text(
              "Description",
              style: DetailScreenStyles.descriptionTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    Text(
                      "this woman\'s tannk top is designed to help you\nstay  ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ".\t\tMaterial",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                              ),
                              Text(
                              "84%\tnylon",
                              style: TextStyle(
                                fontSize: 18.60,
                                ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "2XS, \tXS, \tS, \tM, \tL",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Woman",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Country",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Pakistan",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 55,
                          elevation: 0,
                          child: Text(
                            "Size guide",
                            style: DetailScreenStyles.sizeGuideTextStyle,
                          ),
                          minWidth: double.infinity,
                          color: AppColors.basewhite60Color,
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]
          ),
          ListTile(
            leading: Text(
              "You may also like",
              style: DetailScreenStyles.mayLikeTextStyle,
            ),
            trailing: Text(
              "Show All",
              style: DetailScreenStyles.showAllTextStyle,
            ),
          ),
          Container(
            height: 240,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: true,
                 itemCount: detailScreenData.length,
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.5,
                ),
             itemBuilder: (context, index){
              var data = detailScreenData[index];
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
             ),
          )

      //     buildListTile(),
      //     buildProductImages(),
      //     buildColorsAndSize(),
      //     buildAddtoCart(),
      //     buildExpensionTile(),
      //     buildMayLikeYou(),
      //     buildBottomGridView(),
         ],
       ),
    );
  }
}