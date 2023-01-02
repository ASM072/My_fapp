import '../widgets/categoryproductwidget.dart';
import 'categoryproductmodel.dart';
import 'package:flutter/material.dart';
import '../routes/routes.dart';
import '../screens/detailscreen/detailscreen.dart';
import 'categoryproductmodel.dart';
import 'singleproductmodel.dart';


class CategoryProductModel {
  final String productName;
  final String productImage;
  final String productModel;

  CategoryProductModel({
    required this.productImage,
    required this.productModel,
    required this.productName,
  });
}
