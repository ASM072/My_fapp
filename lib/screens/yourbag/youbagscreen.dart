import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/routes/routes.dart';
import 'package:my_fapp/screens/paymentscreen/paymentscreen.dart';

import '../../appColors/app_colors.dart';
import '../../styles/detailscreenstyles.dart';
import '../../svgimages/svg_images.dart';
import '../../widgets/Mybuttonwidget.dart';

class YourBagScreen extends StatefulWidget {
  @override
  State<YourBagScreen> createState() => _YourBagScreenState();
}

class _YourBagScreenState extends State<YourBagScreen> {
  String? sizeController;
  String? colorsController;
  String? quantityController;

  AppBar buildAppBar() {
    return AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          SvgImages.heart,
          color: AppColors.baseBlackColor,
          width: 40,
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.delete,
            color: AppColors.baseBlackColor,
            width: 30,
          ))
    ]);
  }

  Widget buildSingleBag() {
    return Card(
      child: SizedBox(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "3 Stripes Shirt",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.baseBlackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Adidas orignal",
                                  style: TextStyle(
                                    color: AppColors.baseDarkPinkColor,
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("\$40.00",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.baseBlackColor,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text("\$80.00",
                                          style: TextStyle(
                                            fontSize: 16,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: AppColors.baseBlackColor,
                                          ))
                                    ])
                              ]))),
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.baseGrey30Color,
                              child: Icon(
                                Icons.check,
                                color: AppColors.baseWhiteColor,
                              ))))
                ],
              ),
            ),
            Expanded(
                child: Row(children: [
              Expanded(
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          fillColor: AppColors.baseWhiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                      hint: const Text("Size",
                          style: DetailScreenStyles.productDropDownStyle),
                      value: sizeController,
                      items: ["M", "L", "S", "XS"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          sizeController = value;
                        });
                      })),
              Expanded(
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          fillColor: AppColors.baseWhiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                      hint: const Text("Colors",
                          style: DetailScreenStyles.productDropDownStyle),
                      value: colorsController,
                      items: ["Red", "Blue", "Green", "Yellow"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          colorsController = value;
                        });
                      })),
              Expanded(
                  child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          fillColor: AppColors.baseWhiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                      hint: const Text("Quantity",
                          style: DetailScreenStyles.productDropDownStyle),
                      value: quantityController,
                      items: ["1", "2", "3", "4", "5"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (String? value) {
                        setState(() {
                          quantityController = value;
                        });
                      }))
            ]))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: ListView(physics: const BouncingScrollPhysics(), children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Your Bag",
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColors.baseGrey60Color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "You have 3 items in your bag",
                      style: TextStyle(color: AppColors.baseGrey60Color),
                    ),
                    buildSingleBag(),
                    buildSingleBag(),
                    buildSingleBag(),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  height: 50,
                                  margin: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: AppColors.basewhite60Color,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text("12314314",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.baseBlackColor)))),
                          Expanded(
                              child: MaterialButton(
                                  elevation: 0,
                                  height: 40,
                                  color: AppColors.baseLightOrangeColor,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide.none,
                                  ),
                                  child: const Text("Employ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.baseWhiteColor,
                                      ))))
                        ])),
                    ListTile(
                        title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Order amount",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.baseBlackColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Your total amount of discount",
                                  style: TextStyle(
                                    color: AppColors.baseBlackColor,
                                  ))
                            ]),
                        trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text("\$103.00",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.baseBlackColor,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 2,
                              ),
                              Text("\$55.98",
                                  style: TextStyle(
                                    color: AppColors.baseBlackColor,
                                  ))
                            ])),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: MyButtonWidget(
                        color: AppColors.baseDarkPinkColor,
                        text: "Checkout",
                        onPress: () {
                          PageRouting.goToNextPage(
                            context: context,
                            navigateTo: PaymentScreen(),
                          );
                        },
                      ),
                    ),
                  ]))
        ]));
  }
}
