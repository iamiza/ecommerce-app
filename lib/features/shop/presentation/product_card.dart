import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
  });
  final String productImage;
  final String productTitle;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Image.asset(
              productImage,
              height: 130,
            ),
            Text(productTitle),
            Text(productPrice)
          ],
        ));
  }
}
