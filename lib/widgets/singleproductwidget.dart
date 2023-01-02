import 'package:flutter/material.dart';
import '../styles/homepagestyle.dart';
import '../screens/homepage/homepage.dart';
import '../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../appColors/app_colors.dart';
import 'showallwidget.dart';
import '../data/homepagedata.dart';
import '../models/singleproductmodel.dart';

class Singleproductwidget extends StatelessWidget {
 final String productImage;
 final String productName;
 final String productModel;
 final double productPrice;
 final double productOldPrice;
 final VoidCallback onPressed;
 Singleproductwidget(
  {
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.productPrice,
    required this.productOldPrice,
    required this.onPressed,
  }
  );
 @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: AppColors.baseGrey10Color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(productImage),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite, 
                    size: 30, 
                    color: AppColors.baseDarkOrangeColor, 
                    ),
                    onPressed: (){},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Text(
                      productModel,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.baseDarkPinkColor,
                      )
                    ),
                    Row(
                      children: [
                        Text(
                          "\$ $productPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "\$ $productOldPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}