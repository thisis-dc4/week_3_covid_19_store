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
    final _textTheme = Theme.of(context).textTheme;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '${products.name}\n', style: _textTheme.headline5),
          TextSpan(
            text: 'by ${products.manufacturer}\n',
            style: _textTheme.caption.copyWith(fontSize: 16),
          ),
          TextSpan(text: '${products.desc}\n', style: _textTheme.subtitle1),
          TextSpan(
            text: '\$${products.price.toStringAsFixed(2)}',
            style: _textTheme.headline5.copyWith(
              color: Colors.yellow,
              height: 2.5,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
