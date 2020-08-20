import 'dart:ui';

import 'package:flutter/material.dart';

class ProductPageImage extends StatefulWidget {
  ProductPageImage({
    Key key,
    this.image = 'assets/images/pro-vac.png',
    this.isFav = false,
  }) : super(key: key);
  final String image;
  bool isFav;

  @override
  _ProductPageImageState createState() => _ProductPageImageState();
}

class _ProductPageImageState extends State<ProductPageImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 290,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  margin: EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      IconButton(
                        icon: widget.isFav
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_border),
                        onPressed: () {
                          setState(() {
                            widget.isFav = !widget.isFav;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  widget.image,
                  height: 310,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
