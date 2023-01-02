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

class YourBagScreen extends StatefulWidget {

  @override
  State<YourBagScreen> createState() => _YourBagScreenState();
}

class _YourBagScreenState extends State<YourBagScreen> {
  AppBar buildAppBar(){
    return AppBar(
    backgroundColor: Colors.transparent,
    elevation:0 ,
    actions: [
      IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          SvgImages.heart,
          color: AppColors.baseBlackColor,
          width: 40,
        ),
      ),
      IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          SvgImages.delete,
          color: AppColors.baseBlackColor,
          width: 30,
        )
      )
    ]
  );
}

Widget buildSingleBag(){
  return Card(
    child: Container(
      height: 200,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.theconversation.com/files/417198/original/file-20210820-25-1j3afhs.jpeg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly
                      children: [
                        Text(
                          "3 Stripes Shirt",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColos.baseBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Adidas orignal",
                          style: TextStyle(
                           
                            color: AppColos.baseDarkPinkColor,
                           
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$40.00",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.baseBlackColor,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ]
                        )
                      ]
                    )
                  )
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Bag",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.baseGrey60Color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "You have 3 items in your bag",
                  style: TextStyle(
                    color: AppColors.baseGrey60Color
                  ),
                ),
                buildSingleBag(),
              ]
            )
          )
        ]
      )
    );
  }
}