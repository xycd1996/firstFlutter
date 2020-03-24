import 'package:flutter/material.dart';
import 'package:myapp/views/routes.dart';

class FooterState extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<FooterState> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(title: Text('School'), icon: Icon(Icons.school)),
        BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text('Tv'), icon: Icon(Icons.tv))
      ],
      fixedColor: Colors.blue,
      onTap: _seletedIndex,
      currentIndex: _currentIndex,
    );
  }

  void _seletedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
