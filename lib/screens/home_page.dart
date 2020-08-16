import 'package:flutter/material.dart';

import 'package:week_3_covid_19_store/widgets/choice_row.dart';

class HomePage extends StatelessWidget {
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
      body: Column(
        children: [
          ChoiceRow(),
        ],
      ),
    );
  }
}
