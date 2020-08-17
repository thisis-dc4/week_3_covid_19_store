import 'package:flutter/material.dart';

class Sanitization extends StatelessWidget {
  const Sanitization({
    Key key,
    this.name = 'Mask',
    this.image = 'assets/images/mask.png',
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
