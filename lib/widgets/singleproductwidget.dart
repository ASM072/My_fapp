import 'package:flutter/material.dart';

import '../appColors/app_colors.dart';

class Singleproductwidget extends StatelessWidget {
 final String productImage;
 final String productName;
 final String productModel;
 final double productPrice;
 final double productOldPrice;
 final VoidCallback onPressed;
 const Singleproductwidget(
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
        margin: const EdgeInsets.all(10.0),
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
                color: Colors.transparent,
                child: Image.network(
                  productImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
      //Extra Piece of Code
            // Expanded(
            //   child: Container(
            //     width: double.infinity,
            //     alignment: Alignment.topRight,
            //     decoration: BoxDecoration(
            //       color: AppColors.baseGrey10Color,
            //       borderRadius: BorderRadius.circular(10),
            //       image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(productImage),
            //       ),
            //     ),
            //     child: IconButton(
            //       icon: const Icon(
            //         Icons.favorite, 
            //         size: 30, 
            //         color: AppColors.baseDarkOrangeColor, 
            //         ),
            //         onPressed: (){},
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    productModel,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.baseDarkPinkColor,
                    )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ $productPrice",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      const SizedBox(width: 15,),
                      Text(
                        "\$ $productOldPrice",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}