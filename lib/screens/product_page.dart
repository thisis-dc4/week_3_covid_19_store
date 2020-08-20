import 'package:flutter/material.dart';
import 'package:week_3_covid_19_store/data/products.dart';

import 'package:week_3_covid_19_store/widgets/product_page_image.dart';
import 'package:week_3_covid_19_store/widgets/product_page_info.dart';
import 'package:week_3_covid_19_store/widgets/quantity_selector.dart';
import 'package:week_3_covid_19_store/widgets/size_selector.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key, this.products}) : super(key: key);
  final Products products;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProductPageImage(
                image: products.image,
                isFav: products.isFav,
              ),
              ProductPageInfo(
                products: products,
              ),
              SizeSelector(),
              QuantitySelector(),
              Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  textColor: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.card_travel),
                      Text('Add to bucket'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
