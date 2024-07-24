import 'package:flutter/material.dart';

import 'main/category_screen.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;



  static List<Widget> _widgetOptions = <Widget>[
    CategoriesScreen(),
    Text(
      'Scan',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Cart',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];


  BottomNavigation({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'TOPS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'SCAN',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Camera',
        ),
      ],
    );
  }
}
