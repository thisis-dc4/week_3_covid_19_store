import 'package:flutter/material.dart';

class ChoiceRow extends StatefulWidget {
  @override
  _ChoiceRowState createState() => _ChoiceRowState();
}

class _ChoiceRowState extends State<ChoiceRow> {
  int _value;
  List<String> _types = [
    'Vaccines',
    'Sanitizer',
    'Mask',
    'Gloves',
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
            labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
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
