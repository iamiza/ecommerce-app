//import 'package:ecommerce/features/shop/presentation/product_card.dart';
import 'package:ecommerce/features/shop/presentation/product_list.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});
  final List<String> dollImage = ['asset/'];
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
            body: const Column(
              children: [
                //tab bar gives the number of tabs
                /// `TabBar(tabs: tabs)` is creating a tab bar widget with the specified tabs. The `tabs`
                /// parameter is a list of widgets that represent the individual tabs in the tab bar. Each
                /// widget in the `tabs` list will be displayed as a tab in the tab bar.
                TabBar(labelColor: Colors.black, tabs: [
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
                    ProductList(),
                    ProductList(),
                  ]),
                )
              ],
            )));
  }
}
