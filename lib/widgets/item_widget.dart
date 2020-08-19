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
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('${products.name}\n'),
                  Text('by: ${products.manufacturer}\n'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${products.price}\n'),
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
