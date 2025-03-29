import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/app_palette.dart';
import 'package:vordic_user/features/cart/ui/cart.dart';
import 'package:vordic_user/features/categories/ui/categories.dart';
import 'package:vordic_user/features/home/ui/home.dart';
import 'package:vordic_user/features/profile/ui/profile.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          //Todo: Add navigation logic here
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: AppPalette.transparentColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: AppPalette.whiteColor),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category, color: AppPalette.whiteColor),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: ImageIcon(
                AssetImage('assets/icons/shopping-cart-outlined.png')),
            selectedIcon: ImageIcon(
              AssetImage('assets/icons/shopping-cart.png'),
              color: AppPalette.whiteColor,
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person, color: AppPalette.whiteColor),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        const Home(),
        const Categories(),
        const Cart(),
        const Profile(),
      ][currentPageIndex],
    );
  }
}
