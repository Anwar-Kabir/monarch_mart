import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/view/bottom_navigation/card_monarch.dart';
import 'package:monarch_mart/view/bottom_navigation/categories.dart';
import 'package:monarch_mart/view/bottom_navigation/home.dart';
import 'package:monarch_mart/view/bottom_navigation/product.dart';
import 'package:monarch_mart/view/bottom_navigation/profile.dart';

class BottomNavigationBAr extends StatefulWidget {
  const BottomNavigationBAr({super.key});

  @override
  State<BottomNavigationBAr> createState() => _BottomNavigationBArState();
}

class _BottomNavigationBArState extends State<BottomNavigationBAr> {
  int _currentIndex = 0;
  final pages = [
    const Home(),
    const Categories(),
    const Product(),
    const CardMonarch(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppCon.color.primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;

              switch (index) {
                case 0:
                  {}
                  break;
                case 1:
                  {}
                  break;
                case 2:
                  {}
                  break;
                case 3:
                  {}
                  break;
                case 4:
                  {}
                  break;
              }
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[_currentIndex]);
  }
}
