//import 'package:ecommerce/features/shop/presentation/product_card.dart';
import 'package:ecommerce/features/shop/presentation/product_list.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        /*length gives the number of tabs that can be opened in tab bar */
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Shop Page"),
              backgroundColor: (Colors.red),
            ),
            body: Column(
              children: [
                //tab bar gives the number of tabs
                /// `TabBar(tabs: tabs)` is creating a tab bar widget with the specified tabs. The `tabs`
                /// parameter is a list of widgets that represent the individual tabs in the tab bar. Each
                /// widget in the `tabs` list will be displayed as a tab in the tab bar.
                const TabBar(labelColor: Colors.black, tabs: [
                  Tab(
                    text: "Dolls",
                    icon: Icon(Icons.toys),
                  ),
                  Tab(text: "Chocolates", icon: Icon(Icons.grid_on)),
                  Tab(
                    text: "Flowers",
                    icon: Icon(Icons.camera),
                  ),
                ]),
                Expanded(
                  child: TabBarView(children: [
                    /*Todo pass the list of dolls here*/
                    ProductList(dollImage),
                    ProductList(chocolateImage),
                    ProductList(flowerImage),
                  ]),
                )
              ],
            )));
  }
}

final List<String> dollImage = [
  'assets/images/dolls/doll_one.jpeg',
  'assets/images/dolls/doll_two.jpeg',
  'assets/images/dolls/doll_three.jpeg',
  'assets/images/dolls/doll_four.jpeg',
  'assets/images/dolls/doll_five.jpeg',
  'assets/images/dolls/doll_six.jpeg',
  'assets/images/dolls/doll_seven.jpeg',
  'assets/images/dolls/doll_eight.jpeg',
  'assets/images/dolls/doll_nine.jpeg',
  'assets/images/dolls/doll_ten.jpeg'
];
final List<String> chocolateImage = [
  'assets/images/chocolates/chocolate_one.jpg',
  'assets/images/chocolates/chocolate_two.jpg',
  'assets/images/chocolates/chocolate_three.jpg',
  'assets/images/chocolates/chocolate_four.jpg',
  'assets/images/chocolates/chocolate_five.jpg',
  'assets/images/chocolates/chocolate_six.jpg',
  'assets/images/chocolates/chocolate_seven.jpg',
  'assets/images/chocolates/chocolate_eight.jpg',
  'assets/images/chocolates/chocolate_nine.jpg',
  'assets/images/chocolates/chocolate_ten.jpg'
];
final List<String> flowerImage = [
  'assets/images/flowers/flowers_one.jpeg',
  'assets/images/flowers/flowers_two.jpeg',
  'assets/images/flowers/flowers_three.jpeg',
  'assets/images/flowers/flowers_four.jpeg',
  'assets/images/flowers/flowers_five.jpeg',
  'assets/images/flowers/flowers_six.jpeg',
  'assets/images/flowers/flowers_seven.jpeg',
  'assets/images/flowers/flowers_eight.jpeg',
  'assets/images/flowers/flowers_nine.jpeg',
  'assets/images/flowers/flowers_ten.jpeg'
];
