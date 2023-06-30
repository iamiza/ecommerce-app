import 'package:ecommerce/features/cart/presentation/cart_page.dart';
import 'package:ecommerce/features/home/presentation/home_page.dart';
import 'package:ecommerce/features/profile/presentation/profile_page.dart';
import 'package:ecommerce/features/shop/presentation/shop_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageNo = 0;
  List<Widget> pages = const [
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageNo],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          currentIndex: currentPageNo,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              currentPageNo = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  color: Colors.red,
                ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                label: "Profile"),
          ]),
    );
  }
}
