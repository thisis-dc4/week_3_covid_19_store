import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  int _value = 0;
  List<String> _types = [
    '50 ml',
    '100 ml',
    '150 ml',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      children: List<Widget>.generate(
        _types.length,
        (int index) {
          return ChoiceChip(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            labelPadding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            label: Text(
              _types[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
              });
            },
            selectedColor: Colors.white,
          );
        },
      ).toList(),
    );
  }
}
