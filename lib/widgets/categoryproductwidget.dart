import '../appColors/app_colors.dart';
import '../styles/categoryscreenstyles.dart';
import 'package:flutter/material.dart';



class CategoryProductWidget extends StatelessWidget {
CategoryProductWidget(
  {
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.onPressed,
  }
);

final VoidCallback? onPressed;
final String productImage;
final String productModel;
final String productName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
          right: 20, 
          bottom: 20
        ),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(productImage),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: CategoryScreenStyle.categoryProductNameStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    productModel,
                    style: CategoryScreenStyle.categoryProductModelStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_ios, 
                    color: AppColors.baseBlackColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}