
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_fapp/screens/yourbag/youbagscreen.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../appColors/app_colors.dart';
import 'bottombar.dart';
import 'package:my_fapp/screens/login_screen/login_screen.dart';
import '../screens/categoryscreen/categoryscreen.dart';
import '../screens/homepage/homepage.dart';
import '../styles/login_screenstyle.dart';
import '../svgimages/svg_images.dart';
import '../widgets/Mybuttonwidget.dart';
import '../widgets/textfromfieldwidget.dart';
import 'package:my_fapp/screens/categoryscreen/subcategoryscreen.dart';



class BottomBar extends StatefulWidget {

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    //Homepage Call on Background
    Homepage(),
    CategoryScreen(),
    YourBagScreen(),
    Text(
      'Index 3: Favorites',
      style: optionStyle,
    ),
    Text(
      'Index 4: Person',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    CustomScaffold(
      children: _widgetOptions,
      onItemTap: _onItemTapped,
         scaffold: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
            bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedFontSize: 0.0,
            selectedFontSize: 0.0,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.baseGrey40Color,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
              currentIndex: _selectedIndex,
              selectedIconTheme: IconThemeData(
              color: AppColors.baseDarkPinkColor,
             ),
            //selectedItemColor: AppColors.baseDarkPinkColor,
            onTap: _onItemTapped,
          ),
             // ),
           ),
       );
  }
}


