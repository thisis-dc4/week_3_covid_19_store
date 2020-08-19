import 'package:flutter/material.dart';
import 'package:week_3_covid_19_store/data/products.dart';

import 'package:week_3_covid_19_store/widgets/choice_row.dart';
import 'package:week_3_covid_19_store/widgets/item_widget.dart';
import 'package:week_3_covid_19_store/widgets/sanitization.dart';

class HomePage extends StatelessWidget {
  List<Products> items = [
    Products(
      name: 'Pro-Vac Venco',
      manufacturer: 'baximco',
      desc:
          'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city of Yunnan Province, will be put into use in the second half of 2020.',
      price: 34.50,
      image: 'assets/images/pro-vac.png',
      isFav: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              RaisedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ChoiceRow(),
            ItemWidget(
              products: items[0],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sanitization'),
                Text('All'),
              ],
            ),
            Sanitization(),
          ],
        ),
      ),
    );
  }
}
