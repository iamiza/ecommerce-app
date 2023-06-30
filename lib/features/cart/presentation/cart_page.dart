import 'package:flutter/material.dart';

/*
1.write stless and press enter
2.write the name of the class same as file name in camelback
3.import the material package
4.replace the placeholder with Scaffold
*/
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is cart page')),
    );
  }
}
