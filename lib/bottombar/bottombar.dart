

// ignore_for_file: import_of_legacy_library_into_null_safe, use_key_in_widget_constructors
// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, 

import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/screens/categoryscreen/categoryscreen.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/screens/profilescreen/profilescreen.dart';
import 'package:my_fapp/screens/wishlist/wishlist.dart';
import 'package:my_fapp/screens/yourbag/youbagscreen.dart';

import '../appColors/app_colors.dart';




class BottomBar extends StatefulWidget {

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    //Homepage Call on Background
    Homepage(),
    CategoryScreen(),
    YourBagScreen(),
    WishList(),
    ProfileScreen(),
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


