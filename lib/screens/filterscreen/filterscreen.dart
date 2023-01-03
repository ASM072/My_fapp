// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:my_fapp/appColors/app_colors.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({ Key? key }) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

Widget buildListTile({required String title}){
  return ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.baseBlackColor,
              )
            ),
          );
}
AppBar: buildAppBar(){
  return AppBar(
    elevtion: 0,
    backgroundColor: Colors.transparent,
    centerTile: true,
    title: Text(
      "Filter",
      style: AppColors.baseBlackColor,
    )
  )
}
class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildListTile(title: "Most Popular",),
          Divider(),
          buildListTile(title: "New Items",),
        ],
      )
      
    );
  }
}

