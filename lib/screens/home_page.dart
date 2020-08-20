import 'package:flutter/material.dart';

import 'package:week_3_covid_19_store/data/products.dart';
import 'package:week_3_covid_19_store/widgets/item_widget.dart';
import 'package:week_3_covid_19_store/widgets/choice_row.dart';
import 'package:week_3_covid_19_store/widgets/nav_bar.dart';
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
    Products(
      name: 'Disease Vaccine',
      manufacturer: 'B1 Strain',
      desc: 'The COVID-19 vaccine meant to cure the world.',
      price: 21.44,
      image: 'assets/images/live-b1.png',
      isFav: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.subject,
          color: Colors.yellow,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/images/avatar.png',
              width: 35.0,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ChoiceRow(),
                Container(
                  height: 340,
                  child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ItemWidget(products: items[index]),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sanitization', style: _textTheme.headline6),
                      Text('All',
                          style: _textTheme.bodyText1.copyWith(fontSize: 16.0)),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Sanitization(
                          name: 'Mask', image: 'assets/images/mask.png'),
                      Sanitization(
                          name: 'Gloves', image: 'assets/images/gloves.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          NavBar(),
        ],
      ),
    );
  }
}
