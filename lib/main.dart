import 'package:flutter/material.dart';
import 'package:hackread/list/list_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.grey[50],
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.grey[200],
        accentColor: Colors.lightBlue[400],
      ),
      home: new ListPage(),
    );
  }
}

