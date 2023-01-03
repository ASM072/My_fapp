// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'appColors/app_colors.dart';
import 'bottombar/bottombar.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          ),
        ),

        primarySwatch: Colors.blue,
      ),
    home:  BottomBar(),
    );
  }
}