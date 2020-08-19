import 'package:flutter/material.dart';

import 'package:week_3_covid_19_store/data/products.dart';

class ProductPageInfo extends StatelessWidget {
  const ProductPageInfo({
    Key key,
    this.products,
  }) : super(key: key);
  final Products products;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '${products.name}\n'),
          TextSpan(text: '${products.manufacturer}\n'),
          TextSpan(text: '${products.desc}\n'),
          TextSpan(text: '\$${products.price}'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
