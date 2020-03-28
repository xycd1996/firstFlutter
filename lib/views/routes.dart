import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  final String text;

  NewRoute({
    @required this.text,
  }) : super();

  void _clear(context) {
    Navigator.pop(context, ['12313']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('route')),
      body: Center(child: Text('this is $text')),
      floatingActionButton: new IconButton(
          icon: new Icon(Icons.clear),
          onPressed: () {
            _clear(context);
          }),
    );
  }
}
