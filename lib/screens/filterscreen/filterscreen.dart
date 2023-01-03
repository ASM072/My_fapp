// //ignore_for_file: library_private_types_in_public_api, //prefer_const_constructors, use_key_in_widget_constructors

// import 'package:flutter/material.dart';
// import 'package:my_fapp/appColors/app_colors.dart';
// import 'package:my_fapp/styles/detailscreenstyles.dart';
// import 'package:my_fapp/widgets/Mybuttonwidget.dart';

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }
// class _FilterScreenState extends State<FilterScreen> {
//  late String _ratingController;
//  late String _categoryController;
// RangeValues _currentRangeValues = const RangeValues(40, 80);

// Widget buildPriceExpansionTile() {
//   return ExpansionTile(
//     children: [
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             RangeSlider(
//               values: _currentRangeValues,
//               min: 0,
//               max: 1000,
//               labels: RangeLabels(
//                 _currentRangeValues.start.round.toString(),
//                 _currentRangeValues.end.round.toString(),
//               ),
//               onChanged: (RangeValues values) {
//                 setState(() {
//                   _currentRangeValues = values;
//                 });
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children:[
//                 Text(
//                   "\$\t${_currentRangeValues.start.round.toString()}",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: AppColors.baseBlackColor,
//                   ),
//                 ),
//                 Text(
//                   "\$\t${_currentRangeValues.end.round.toString()}",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: AppColors.baseBlackColor,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       )
//     ],
//     title: Text(
//       "price",
//       style: TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: AppColors.baseBlackColor,
//       ),
//     ),
//   );
// }



// Widget buildSizeGuide(
//     {required String text, bool containerColor = false,  required Color color}) {
//   return Container(
//     alignment: Alignment.center,
//     decoration: BoxDecoration(
//       color: containerColor ? color : AppColors.baseGrey10Color,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     child: containerColor
//           ? Container()
//           : Text(
//               text,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//   );
// }

// Widget buildExpansionTile(
//     {required List<String> items,
//     required String title,
//     required String hint,
//     required String value,
//     required}) {
//   return ExpansionTile(
//     children: [
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DropdownButtonFormField<String>(
//               decoration: InputDecoration(
//                   fillColor: AppColors.basewhite60Color,
//                   filled: true,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(10.0),
//                   )),
//               iconSize: 30,
//               hint: Text(
//                 hint,
//                 style: DetailScreenStyles.productDropDownStyle,
//               ),
//               value: value,
//               items: items
//                   .map((e) => DropdownMenuItem(
//                         child: Text(e),
//                         value: e,
//                       ))
//                   .toList(),
//               onChanged: (String? value) {
//                 setState(() {
//                   value = value;
//                 });
//               },
//             ),
//           ],
//         ),
//       )
//     ],
//     title: Text(title,
//         style: TextStyle(
//           fontSize: 16,
//           color: AppColors.baseBlackColor,
//           fontWeight: FontWeight.bold,
//         )),
//   );
// }

// Widget buildListTile({required String title}) {
//   return ListTile(
//     title: Text(title,
//         style: TextStyle(
//           fontSize: 16,
//           color: AppColors.baseBlackColor,
//         )),
//   );
// }

// AppBar buildAppBar() {
//   return AppBar(
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       centerTitle: true,
//       title: Text(
//         "Filter",
//         style: TextStyle(
//           color: AppColors.baseBlackColor,
//         ),
//       ));
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         children: [
//           buildListTile(
//             title: "Most Popular",
//           ),
//           Divider(),
//           buildListTile(
//             title: "New Items",
//           ),
//           Divider(),
//           buildListTile(
//             title: "Price:\t High - Low",
//           ),
//           Divider(),
//           buildListTile(
//             title: "Price:\t Low - High",
//           ),
//           Divider(),
//           buildExpansionTile(
//             value: _ratingController,
//             items: ["Women", "Men", "Kids"],
//             hint: "Gender",
//             title: "Gender",
//           ),
//           Divider(),
//           buildExpansionTile(
//             value: _categoryController,
//             items: ["T-Shirt", "Jacket", "Sneaker"],
//             hint: "Categort",
//             title: "Category",
//           ),
//           Divider(),
//           ExpansionTile(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: GridView.count(
//                   primary: true,
//                   shrinkWrap: true,
//                   crossAxisCount: 5,
//                   physics: NeverScrollableScrollPhysics(),
//                   childAspectRatio: 1.4,
//                   crossAxisSpacing: 15,
//                   mainAxisSpacing: 15,
//                   children: [
//                     buildSizeGuide(
//                       text: "5", color: Colors.blue,
//                     ),
//                     buildSizeGuide(
//                       color: Colors.amberAccent,
//                       text: "6",
//                     ),
//                     buildSizeGuide(
//                       color: Colors.deepOrange,
//                       text: "7",
//                     ),
//                     buildSizeGuide(
//                       color: Colors.green,
//                       text: "8",
//                     ),
//                   ],
//                 ),
//               )
//             ],
//             title: Text(
//               "size",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.baseBlackColor,
//               ),
//             ),
//           ),
//           Divider(),
//           ExpansionTile(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: GridView.count(
//                   primary: true,
//                   shrinkWrap: true,
//                   crossAxisCount: 5,
//                   physics: NeverScrollableScrollPhysics(),
//                   childAspectRatio: 1.4,
//                   crossAxisSpacing: 15,
//                   mainAxisSpacing: 15,
//                   children: [
//                     buildSizeGuide(
//                       text: "Black",
//                       color: AppColors.baseBlackColor,
//                       containerColor: true,
//                     ),
//                     buildSizeGuide(
//                       text: "Orange",
//                       color: AppColors.baseDarkOrangeColor,
//                       containerColor: true,
//                     ),
//                     buildSizeGuide(
//                       text: "Cyan",
//                       color: AppColors.baseLightCyanColor,
//                       containerColor: true,
//                     ),
//                   ],
//                 ),
//               )
//             ],
//             title: Text(
//               "Colors",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.baseBlackColor,
//               ),
//             ),
//           ),
//           buildPriceExpansionTile(),
//           Container(
//             margin: EdgeInsets.all(20.0),
//             child: MyButtonWidget(
//               color: AppColors.baseDarkPinkColor,
//               onPress: () {},
//               text: "view more item",
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
