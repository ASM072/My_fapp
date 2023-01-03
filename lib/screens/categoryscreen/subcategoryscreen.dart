// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../appColors/app_colors.dart';
import '../../models/singleproductmodel.dart';
import '../../routes/routes.dart';
import '../../styles/subcategorystyles.dart';
import '../../svgimages/svg_images.dart';
import '../../widgets/singleproductwidget.dart';
import '../detailscreen/detailscreen.dart';

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
  int isSelect = 1;

  List<bool> isSelected = [true, false, false];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();
  List<FocusNode>? focusToggle;

  @override
  void initState() {
    focusToggle = [
      focusNodeButton1,
      focusNodeButton2,
      focusNodeButton3,
    ];
    super.initState();
  }

  @override
  void dispose() {
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
    super.dispose();
  }

  Widget buildToggleButton() {
    return ToggleButtons(
      borderWidth: 0,
      focusColor: null,
      fillColor: Colors.transparent,
      selectedColor: AppColors.baseDarkPinkColor,
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      focusNodes: focusToggle,
      onPressed: (int index) {
        if (index == 0) {
          setState(() {
            isSelect = 1;
          });
        } else if (index == 1) {
          setState(() {
            isSelect = 2;
          });
        } else if (index == 2) {
          setState(() {
            isSelect = 3;
          });
        }
        ;
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
      children: const [
        Icon(
          Icons.grid_view,
          size: 15,
        ),
        Icon(
          Icons.view_agenda_outlined,
          size: 15,
        ),
        Icon(
          Icons.crop_landscape_sharp,
          size: 15,
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(
              90 / 360,
            ),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 35,
            ),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 35,
          ),
          onPressed: () {},
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: SubCategoryStyles.subCategoryTitleStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.productData.length} Products",
                  style: SubCategoryStyles.subCategoryItemStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.list_alt_sharp,
                            color: AppColors.baseBlackColor,
                            size: 25,
                          ),
                          const SizedBox(
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
                        flex: 2,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildToggleButton(),
                            ]))
                  ],
                ),
                Divider(),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: widget.productData.length,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isSelect == 1
                        ? 2
                        : isSelect == 2
                            ? 1
                            : isSelect == 3
                                ? 1
                                : 2,
                    childAspectRatio: isSelect == 1
                        ? 0.7
                        : isSelect == 2
                            ? 1.5
                            : isSelect == 3
                                ? 0.8
                                : 0.7,
                  ),
                  itemBuilder: (context, index) {
                    var data = widget.productData[index];
                    return Singleproductwidget(
                      onPressed: () {
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
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
