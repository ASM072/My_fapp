import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../appColors/app_colors.dart';
import '../../svgimages/svg_images.dart';


class WishList extends StatefulWidget {

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {

String? sizeController;
String? colorsController;
String? quantityController;

Widget buildSingleBag(){
  return Card(
    child: SizedBox(
      height: 140,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "3 Stripes Shirt",
                          style: TextStyle(
                            fontSize: 16,

                            color: AppColors.baseBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Adidas orignal",
                          style: TextStyle(
                           
                            color: AppColors.baseDarkPinkColor,
                           
                          ),
                        ),
    
                          
                            Text(
                              "\$40.00",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.baseBlackColor,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Text(
                              "\$80.00",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.lineThrough,
                                color: AppColors.baseBlackColor,
                                
                              )
                            )
                          
                        
                      ]
                    )
                  )
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.baseGrey30Color,
                      child: Icon(
                        Icons.check,
                        color: AppColors.baseWhiteColor,
                      )
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

AppBar buildAppBar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      "WishList",
      style: TextStyle(
        color: AppColors.baseBlackColor,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(
          right: 14.0,
          top: 14.0,
        ),
        child: Text
        ("Select", style: TextStyle(color: AppColors.baseBlackColor, fontSize: 20)
        )
      )
    ]
  );
}

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 55,
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ), backgroundColor: AppColors.baseGrey80Color, disabledForegroundColor: Colors.grey.withOpacity(0.38), disabledBackgroundColor: Colors.grey.withOpacity(0.12),

                  ),
                  icon: SvgPicture.asset(
                    SvgImages.delete,
                    color: AppColors.baseWhiteColor,
                    width: 30,
                  ),
                  label: const Text(
                    "Remove", 
                    style: TextStyle(
                      fontSize: 20, 
                      color: AppColors.baseWhiteColor
                      ),
                    ),
                  onLongPress: (){},
                ),
              )
            ),
            Expanded(
              child: Container(
                height: 55,
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ), backgroundColor: AppColors.baseDarkPinkColor, disabledForegroundColor: Colors.grey.withOpacity(0.38), disabledBackgroundColor: Colors.grey.withOpacity(0.12),
                  ),
                  icon: SvgPicture.asset(
                    SvgImages.shoppingCart,
                    color: AppColors.baseWhiteColor,
                    width: 30,
                  ),
                  label: const Text(
                    "Buy now",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.baseWhiteColor,
                    ),
                  ),
                  onLongPress: () {},
                ),
              ),
            ),
          ]
        )
      ),
      appBar: buildAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
                buildSingleBag(),
              ]
            )
          )
        ]
      )
    );
  }
}