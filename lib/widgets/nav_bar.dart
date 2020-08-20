import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:week_3_covid_19_store/widgets/nav_bar_icon.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey.withOpacity(0.2),
      ),
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarIcon(
                icon: Icons.home,
                isSelected: true,
              ),
              NavBarIcon(
                icon: Icons.favorite_border,
                isSelected: false,
              ),
              NavBarIcon(
                icon: Icons.search,
                isSelected: false,
              ),
              NavBarIcon(
                icon: Icons.card_travel,
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
