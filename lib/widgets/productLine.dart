import 'package:flutter/material.dart';

import '../Widgets/productCard.dart';
import '../data/product.dart';

class ProductLine extends StatelessWidget {

  final List<Product> productList;

  const ProductLine({required this.productList, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(children:
      [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),

            child: Row(
              children: [
                for (int i = 0; i < productList.length; i++)


                  Container(
                    padding: const EdgeInsets.only(right:10),
                    child: ProductCard(
                      productImage: productList[i].imageURL,
                      productTitle: productList[i].name,
                      productDescription: productList[i].description,
                      productVideo: productList[i].video,
                    ),

                  ),

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
