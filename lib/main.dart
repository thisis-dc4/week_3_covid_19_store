import 'package:flutter/material.dart';

import 'package:week_3_covid_19_store/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Online Store',
      theme: ThemeData.light()
          .copyWith(buttonTheme: ButtonThemeData(buttonColor: Colors.yellow)),
      darkTheme: ThemeData.dark().copyWith(
        buttonTheme: ButtonThemeData(buttonColor: Colors.yellow),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
