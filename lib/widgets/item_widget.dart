import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key key,
    this.name = 'Pro-Vac Venco',
    this.manufacturer = 'baximco',
    this.image = 'assets/images/pro-vac.png',
    this.price = 34.50,
  }) : super(key: key);

  final String name, manufacturer, image;
  final double price;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
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
                Text('$name\n'),
                Text('by: $manufacturer\n'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$$price\n'),
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
              image,
              height: 190,
            ),
          ),
        ],
      ),
    );
  }
}
