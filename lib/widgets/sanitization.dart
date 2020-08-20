import 'package:flutter/material.dart';

class Sanitization extends StatelessWidget {
  const Sanitization({
    Key key,
    this.name,
    this.image,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 270,
        width: 200,
        decoration: BoxDecoration(
          color: Color.fromRGBO(70, 70, 70, 0.5),
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline6.copyWith(height: 2.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
