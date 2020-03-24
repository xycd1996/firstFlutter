import 'package:flutter/material.dart';
import 'package:myapp/views/list.dart';
import 'package:myapp/views/tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'welcome to flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: TabBarRoute(),
      debugShowCheckedModeBanner: false,
      darkTheme: new ThemeData(
        primaryColor: Colors.black,
      ),
    );
  }
}
