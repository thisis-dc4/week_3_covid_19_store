import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    Key key,
    this.icon,
    this.isSelected,
  }) : super(key: key);

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: isSelected ? Colors.yellow : Colors.grey.withOpacity(0.5),
        child: Icon(
          icon,
          color: isSelected ? Colors.black : Colors.white,
          size: 30.0,
        ),
        padding: const EdgeInsets.all(0.0),
        onPressed: () {},
      ),
    );
  }
}
