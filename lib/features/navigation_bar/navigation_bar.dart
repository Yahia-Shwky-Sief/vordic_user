import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/app_palette.dart';
import 'package:vordic_user/features/cart/ui/cart.dart';
import 'package:vordic_user/features/categories/ui/categories.dart';
import 'package:vordic_user/features/home/ui/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        indicatorColor: AppPalette.greyColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
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
