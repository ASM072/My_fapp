
import 'package:my_fapp/bottombar/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/screens/login_screen/login_screen.dart';
import 'package:my_fapp/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/textfromfieldwidget.dart';
import 'package:my_fapp/styles/login_screenstyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:custom_navigator/custom_scaffold.dart';
import 'package:my_fapp/screens/categoryscreen/categoryscreen.dart';







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
    Text(
      'Index 1: Grid View',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
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
    return CustomScaffold(
      children: _widgetOptions,
      onItemTap: _onItemTapped,
      scaffold: Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
          color: AppColors.baseDarkPinkColor
        ),
        // selectedItemColor: AppColors.baseDarkPinkColor,
        onTap: _onItemTapped,
      ),
    ),
    );
  }
}
