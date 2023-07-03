import 'package:ecommerce/features/shop/presentation/product_card.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<String> image;
  const ProductList(this.image, {super.key});

/* 4 todo receive the list of products here in constructer*/
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
              productImage: image[index],
              productTitle: "Doll no 1",
              productPrice: "Rs: 1500");
        });
  }
}
