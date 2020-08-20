import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:week_3_covid_19_store/data/products.dart';
import 'package:week_3_covid_19_store/screens/product_page.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key key,
    this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => ProductPage(
          products: products,
        ),
      )),
      child: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 270,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(70, 70, 70, 0.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // SizedBox(height: 150.0),
                  Text(
                    '${products.name}\n',
                    style: _textTheme.headline6.copyWith(height: 0.5),
                  ),
                  Text(
                    'by: ${products.manufacturer}\n',
                    style: _textTheme.caption.copyWith(fontSize: 14.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$${products.price.toStringAsFixed(2)}\n',
                        style:
                            _textTheme.headline5.copyWith(color: Colors.yellow),
                      ),
                      SizedBox(
                        width: 35,
                        child: RaisedButton(
                          child: Icon(
                            Icons.card_travel,
                            color: Colors.black,
                            size: 20.0,
                          ),
                          padding: EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 120.0),
              child: Image.asset(
                products.image,
                height: 190,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
